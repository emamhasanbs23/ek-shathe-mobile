import 'package:ek_shathe_mobile/core/network/api/api_envelope.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
abstract class LoginResponse with _$LoginResponse implements ApiResponse {
  const factory LoginResponse({
    int? code,
    String? message,
    bool? error,
    LoginResults? results,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
abstract class LoginResults with _$LoginResults {
  const factory LoginResults({
    String? data,
    String? refreshToken,
    bool? isNewUser,
  }) = _LoginResults;

  factory LoginResults.fromJson(Map<String, dynamic> json) =>
      _$LoginResultsFromJson(json);
}
