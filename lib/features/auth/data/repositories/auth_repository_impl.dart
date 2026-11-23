import 'package:ek_shathe_mobile/core/error/failures.dart';
import 'package:ek_shathe_mobile/core/logger/app_logger.dart';
import 'package:ek_shathe_mobile/core/network/api/auth_api.dart';
import 'package:ek_shathe_mobile/core/network/network_guard.dart';
import 'package:ek_shathe_mobile/core/storage/secure_storage_service.dart';
import 'package:ek_shathe_mobile/core/storage/storage_keys.dart';
import 'package:ek_shathe_mobile/features/auth/data/models/login_request.dart';
import 'package:ek_shathe_mobile/features/auth/data/models/refresh_token_request.dart';
import 'package:ek_shathe_mobile/features/auth/data/models/user_me_response.dart';
import 'package:ek_shathe_mobile/features/auth/domain/entities/auth_user.dart';
import 'package:ek_shathe_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

/// Simplified auth repository: calls the shared [AuthApi] directly and owns
/// token persistence. No remote/data-source facade layers.
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({
    required this._api,
    required this._storage,
  });

  final AuthApi _api;
  final SecureStorageService _storage;

  @override
  Future<Either<Failure, AuthUser>> login({
    required String username,
    required String password,
  }) async {
    try {
      final response = await guardApi(
        'AuthRepository.login',
        () => _api.login(
          LoginRequest(username: username, password: password),
        ),
      );

      final accessToken = response.results?.data;
      if (accessToken == null || accessToken.isEmpty) {
        return const Left(LoginFailedFailure());
      }

      await _storage.write(StorageKeys.authToken, accessToken);
      final refreshToken = response.results?.refreshToken;
      if (refreshToken != null && refreshToken.isNotEmpty) {
        await _storage.write(StorageKeys.refreshToken, refreshToken);
      }

      final userResult = await _fetchCurrentUser();
      switch (userResult) {
        case Left(:final value):
          return Left(value);
        case Right(:final value):
          if (value == null) {
            return const Left(LoginMissingUserFailure());
          }
          AppLogger.i('AuthRepository.login succeeded for ${value.email}');
          return Right(value);
      }
    } on Failure catch (failure) {
      AppLogger.w('AuthRepository.login rejected: ${failure.message}');
      return Left(failure);
    } on Object catch (error, stackTrace) {
      AppLogger.e(
        'AuthRepository.login failed',
        error: error,
        stackTrace: stackTrace,
      );
      return const Left(UnexpectedFailure());
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      await _storage.delete(StorageKeys.authToken);
      await _storage.delete(StorageKeys.refreshToken);
      await _storage.delete(StorageKeys.userId);
      await _storage.delete(StorageKeys.userEmail);
      return const Right(null);
    } on Object catch (error, stackTrace) {
      AppLogger.e(
        'AuthRepository.logout failed',
        error: error,
        stackTrace: stackTrace,
      );
      return const Left(UnexpectedFailure());
    }
  }

  @override
  Future<bool> isAuthenticated() async {
    final token = await _storage.read(StorageKeys.authToken);
    return token != null && token.isNotEmpty;
  }

  @override
  Future<Either<Failure, AuthUser?>> getCurrentUser() async {
    try {
      final accessToken = await _storage.read(StorageKeys.authToken);
      if (accessToken == null || accessToken.isEmpty) {
        return const Right(null);
      }

      final result = await _fetchCurrentUser();
      return await result.fold(
        (failure) async {
          final cached = await _readCachedUser();
          if (cached != null) {
            return Right(cached);
          }
          return Left(failure);
        },
        (user) async => Right(user),
      );
    } on Object catch (error, stackTrace) {
      AppLogger.e(
        'AuthRepository.getCurrentUser failed',
        error: error,
        stackTrace: stackTrace,
      );
      return const Left(UnexpectedFailure());
    }
  }

  @override
  Future<Either<Failure, String>> refreshAccessToken() async {
    final refresh = await _storage.read(StorageKeys.refreshToken);
    if (refresh == null || refresh.isEmpty) {
      return const Left(NoRefreshTokenFailure());
    }

    try {
      final response = await guardApi(
        'AuthRepository.refreshAccessToken',
        () => _api.refresh(
          RefreshTokenRequest(refreshToken: refresh),
          options: refreshRequestOptions(),
        ),
      );

      final accessToken = response.results?.accessToken;
      if (accessToken == null || accessToken.isEmpty) {
        return const Left(TokenRefreshFailedFailure());
      }

      await _storage.write(StorageKeys.authToken, accessToken);
      final newRefresh = response.results?.refreshToken;
      if (newRefresh != null && newRefresh.isNotEmpty) {
        await _storage.write(StorageKeys.refreshToken, newRefresh);
      }
      return Right(accessToken);
    } on Failure catch (failure) {
      return Left(failure);
    } on Object catch (error, stackTrace) {
      AppLogger.e(
        'AuthRepository.refreshAccessToken failed',
        error: error,
        stackTrace: stackTrace,
      );
      return const Left(UnexpectedFailure());
    }
  }

  Future<Either<Failure, AuthUser?>> _fetchCurrentUser() async {
    try {
      final response = await guardApi('AuthRepository.getMe', _api.getMe);

      if (response.results?.data == null) {
        return const Left(LoadUserFailedFailure());
      }
      final user = response.toDomain();
      await _storage.write(StorageKeys.userId, user.id);
      await _storage.write(StorageKeys.userEmail, user.email);
      return Right(user);
    } on Failure catch (failure) {
      return Left(failure);
    }
  }

  Future<AuthUser?> _readCachedUser() async {
    final id = await _storage.read(StorageKeys.userId);
    final email = await _storage.read(StorageKeys.userEmail);
    if (id == null || id.isEmpty || email == null || email.isEmpty) {
      return null;
    }
    return AuthUser(id: id, email: email);
  }
}
