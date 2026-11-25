import 'package:ek_shathe_mobile/core/network/api/api_envelope.dart';
import 'package:ek_shathe_mobile/features/auth/data/models/auth_token_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
abstract class LoginResponse with _$LoginResponse implements ApiResponse {
  const factory LoginResponse({
    bool? success,
    String? message,
    AuthTokenData? data,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
