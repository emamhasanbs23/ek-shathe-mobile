import 'package:ek_shathe_mobile/core/error/failures.dart';
import 'package:ek_shathe_mobile/core/logger/app_logger.dart';
import 'package:ek_shathe_mobile/core/network/api/auth_api.dart';
import 'package:ek_shathe_mobile/core/network/jwt_payload.dart';
import 'package:ek_shathe_mobile/core/network/network_guard.dart';
import 'package:ek_shathe_mobile/core/storage/secure_storage_service.dart';
import 'package:ek_shathe_mobile/core/storage/storage_keys.dart';
import 'package:ek_shathe_mobile/features/auth/data/models/auth_user_dto.dart';
import 'package:ek_shathe_mobile/features/auth/data/models/login_request.dart';
import 'package:ek_shathe_mobile/features/auth/data/models/logout_request.dart';
import 'package:ek_shathe_mobile/features/auth/data/models/refresh_token_request.dart';
import 'package:ek_shathe_mobile/features/auth/data/models/register_request.dart';
import 'package:ek_shathe_mobile/features/auth/domain/entities/auth_user.dart';
import 'package:ek_shathe_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

/// Auth repository: calls [AuthApi] and owns token persistence.
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({
    required this._api,
    required this._storage,
  });

  final AuthApi _api;
  final SecureStorageService _storage;

  AuthUser _toDomain(AuthUserDto dto) => AuthUser(
        id: dto.id.toString(),
        email: dto.email,
        displayName: dto.name,
      );

  Future<void> _persistUser(AuthUser user) async {
    await _storage.write(StorageKeys.userId, user.id);
    await _storage.write(StorageKeys.userEmail, user.email);
  }

  Future<void> _persistTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    await _storage.write(StorageKeys.authToken, accessToken);
    await _storage.write(StorageKeys.refreshToken, refreshToken);
  }

  /// Login/refresh responses carry tokens only — build a session user from
  /// the access-token `sub` claim and the email used at login (or cache).
  AuthUser? _userFromAccessToken(String accessToken, {String? email}) {
    final id = subjectFromAccessToken(accessToken);
    if (id == null || id.isEmpty) return null;
    final resolvedEmail = email?.trim();
    if (resolvedEmail == null || resolvedEmail.isEmpty) return null;
    return AuthUser(id: id, email: resolvedEmail);
  }

  @override
  Future<Either<Failure, AuthUser>> register({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final response = await guardApi(
        'AuthRepository.register',
        () => _api.register(
          RegisterRequest(name: name, email: email, password: password),
        ),
      );

      final dto = response.data?.user;
      if (dto == null) {
        return const Left(LoginFailedFailure());
      }

      final user = _toDomain(dto);
      AppLogger.i('AuthRepository.register succeeded for ${user.email}');
      return Right(user);
    } on Failure catch (failure) {
      AppLogger.w('AuthRepository.register rejected: ${failure.message}');
      return Left(failure);
    } on Object catch (error, stackTrace) {
      AppLogger.e(
        'AuthRepository.register failed',
        error: error,
        stackTrace: stackTrace,
      );
      return const Left(UnexpectedFailure());
    }
  }

  @override
  Future<Either<Failure, AuthUser>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await guardApi(
        'AuthRepository.login',
        () => _api.login(
          LoginRequest(email: email, password: password),
        ),
      );

      final data = response.data;
      if (data == null ||
          data.accessToken.isEmpty ||
          data.refreshToken.isEmpty) {
        return const Left(LoginFailedFailure());
      }

      await _persistTokens(
        accessToken: data.accessToken,
        refreshToken: data.refreshToken,
      );

      final user = _userFromAccessToken(data.accessToken, email: email);
      if (user == null) {
        return const Left(LoginMissingUserFailure());
      }
      await _persistUser(user);
      AppLogger.i('AuthRepository.login succeeded for ${user.email}');
      return Right(user);
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
      final refresh = await _storage.read(StorageKeys.refreshToken);
      if (refresh != null && refresh.isNotEmpty) {
        try {
          await guardApi(
            'AuthRepository.logout',
            () => _api.logout(
              LogoutRequest(refreshToken: refresh),
              options: refreshRequestOptions(),
            ),
          );
        } on Failure catch (failure) {
          AppLogger.w(
            'AuthRepository.logout API failed (clearing local): '
            '${failure.message}',
          );
        }
      }

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

      final cached = await _readCachedUser();
      return Right(cached);
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

      final data = response.data;
      if (data == null || data.accessToken.isEmpty) {
        return const Left(TokenRefreshFailedFailure());
      }

      await _persistTokens(
        accessToken: data.accessToken,
        refreshToken: data.refreshToken.isNotEmpty
            ? data.refreshToken
            : refresh,
      );
      // Keep cached email; refresh id from new access token if present.
      final email = await _storage.read(StorageKeys.userEmail);
      final user = _userFromAccessToken(data.accessToken, email: email);
      if (user != null) {
        await _persistUser(user);
      }
      return Right(data.accessToken);
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

  Future<AuthUser?> _readCachedUser() async {
    final id = await _storage.read(StorageKeys.userId);
    final email = await _storage.read(StorageKeys.userEmail);
    if (id == null || id.isEmpty || email == null || email.isEmpty) {
      return null;
    }
    return AuthUser(id: id, email: email);
  }
}
