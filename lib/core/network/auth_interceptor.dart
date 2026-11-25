import 'package:dio/dio.dart';
import 'package:ek_shathe_mobile/core/logger/app_logger.dart';
import 'package:ek_shathe_mobile/core/storage/secure_storage_service.dart';
import 'package:ek_shathe_mobile/core/storage/storage_keys.dart';
import 'package:ek_shathe_mobile/features/auth/domain/repositories/auth_repository.dart';

/// Attaches the auth token and locale to every outgoing request and
/// recovers from expired tokens by trading the stored refresh token for a
/// fresh access token, then retrying the original request once.
///
/// Uses `Authorization: Bearer` and `Accept-Language` headers.
class AuthInterceptor extends Interceptor {
  AuthInterceptor(
    this._dio,
    this._storage, {
    required this._authRepositoryBuilder,
    this._onSessionExpired,
  });

  static const _retryFlagKey = '_auth_retried';

  /// Extra flag that requests can set to skip automatic auth header attachment.
  /// Used by the refresh-token endpoint so it does not send the expired token.
  static const String skipAuthKey = '_skip_auth';

  static const _authHeader = 'Authorization';
  static const _acceptLanguageHeader = 'Accept-Language';

  final Dio _dio;
  final SecureStorageService _storage;
  final AuthRepository Function() _authRepositoryBuilder;
  final void Function()? _onSessionExpired;

  Future<String?>? _refreshFuture;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final language = await _readLanguage();
    options.headers[_acceptLanguageHeader] = language;

    final skipAuth = options.extra[skipAuthKey] == true;
    if (!skipAuth && options.headers[_authHeader] == null) {
      final token = await _storage.read(StorageKeys.authToken);
      if (token != null && token.isNotEmpty) {
        options.headers[_authHeader] = 'Bearer $token';
      }
    }

    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final status = err.response?.statusCode;
    final alreadyRetried = err.requestOptions.extra[_retryFlagKey] == true;

    if (status != 401 || alreadyRetried) {
      return handler.next(err);
    }

    final refreshToken = await _storage.read(StorageKeys.refreshToken);
    if (refreshToken == null || refreshToken.isEmpty) {
      AppLogger.w(
        '401 received but no refresh token is stored; '
        'forwarding as Unauthorized.',
      );
      _notifySessionExpired();
      return handler.next(err);
    }

    AppLogger.i('401 detected — attempting token refresh.');
    final refreshed = await _refreshOnce();
    if (refreshed == null) {
      await _clearAuthState();
      _notifySessionExpired();
      AppLogger.w('Token refresh failed; user must sign in again.');
      return handler.next(err);
    }

    final language = await _readLanguage();
    final retried = err.requestOptions
      ..headers[_authHeader] = 'Bearer $refreshed'
      ..headers[_acceptLanguageHeader] = language
      ..extra[_retryFlagKey] = true;

    try {
      final response = await _dio.fetch<dynamic>(retried);
      return handler.resolve(response);
    } on DioException catch (retryError) {
      if (retryError.response?.statusCode == 401) {
        AppLogger.w(
          'Retry after refresh still returned 401; clearing auth state',
        );
        await _clearAuthState();
        _notifySessionExpired();
      }
      return handler.next(retryError);
    }
  }

  Future<String?> _refreshOnce() {
    return _refreshFuture ??= _doRefresh().whenComplete(() {
      _refreshFuture = null;
    });
  }

  Future<String?> _doRefresh() async {
    try {
      final repository = _authRepositoryBuilder();
      final result = await repository.refreshAccessToken();
      final value = result.fold<String?>(
        (failure) {
          AppLogger.w('Refresh returned ${failure.runtimeType}');
          return null;
        },
        (token) => token,
      );
      if (value != null && value.isNotEmpty) {
        await _storage.write(StorageKeys.authToken, value);
      }
      return value;
    } on Object catch (error, stackTrace) {
      AppLogger.e(
        'AuthInterceptor refresh threw',
        error: error,
        stackTrace: stackTrace,
      );
      return null;
    }
  }

  Future<String> _readLanguage() async {
    final stored = await _storage.read(StorageKeys.language);
    if (stored != null && stored.isNotEmpty) {
      return stored;
    }
    return 'en';
  }

  Future<void> _clearAuthState() async {
    await _storage.delete(StorageKeys.authToken);
    await _storage.delete(StorageKeys.refreshToken);
  }

  void _notifySessionExpired() {
    final callback = _onSessionExpired;
    if (callback == null) return;
    try {
      callback();
    } on Object catch (error, stackTrace) {
      AppLogger.e(
        'sessionExpired callback threw',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }
}
