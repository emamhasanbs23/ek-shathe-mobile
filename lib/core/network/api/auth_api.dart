import 'package:dio/dio.dart';
import 'package:ek_shathe_mobile/core/network/api/api_endpoints.dart';
import 'package:ek_shathe_mobile/core/network/auth_interceptor.dart';
import 'package:ek_shathe_mobile/features/auth/data/models/login_request.dart';
import 'package:ek_shathe_mobile/features/auth/data/models/login_response.dart';
import 'package:ek_shathe_mobile/features/auth/data/models/logout_request.dart';
import 'package:ek_shathe_mobile/features/auth/data/models/logout_response.dart';
import 'package:ek_shathe_mobile/features/auth/data/models/refresh_token_request.dart';
import 'package:ek_shathe_mobile/features/auth/data/models/register_request.dart';
import 'package:ek_shathe_mobile/features/auth/data/models/register_response.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api.g.dart';

/// Retrofit contract for auth endpoints. Wired to the shared [Dio] instance
/// so AuthInterceptor attaches Bearer auth and handles 401 refresh.
@RestApi()
abstract class AuthApi {
  factory AuthApi(Dio dio, {String baseUrl}) = _AuthApi;

  @POST(AuthEndpoints.register)
  Future<RegisterResponse> register(
    @Body() RegisterRequest request, {
    CancelToken? cancelToken,
  });

  @POST(AuthEndpoints.login)
  Future<LoginResponse> login(
    @Body() LoginRequest request, {
    CancelToken? cancelToken,
  });

  @POST(AuthEndpoints.refresh)
  Future<LoginResponse> refresh(
    @Body() RefreshTokenRequest request, {
    @DioOptions() Options? options,
    CancelToken? cancelToken,
  });

  @POST(AuthEndpoints.logout)
  Future<LogoutResponse> logout(
    @Body() LogoutRequest request, {
    @DioOptions() Options? options,
    CancelToken? cancelToken,
  });
}

/// Options that skip attaching the (possibly expired) access token.
Options refreshRequestOptions() => Options(
  extra: {AuthInterceptor.skipAuthKey: true},
);
