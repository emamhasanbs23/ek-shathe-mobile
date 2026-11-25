import 'package:ek_shathe_mobile/core/network/api/api_envelope.dart';
import 'package:ek_shathe_mobile/features/auth/data/models/auth_user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response.freezed.dart';
part 'register_response.g.dart';

@freezed
abstract class RegisterResponse with _$RegisterResponse implements ApiResponse {
  const factory RegisterResponse({
    bool? success,
    String? message,
    RegisterData? data,
  }) = _RegisterResponse;

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}

@freezed
abstract class RegisterData with _$RegisterData {
  const factory RegisterData({
    required AuthUserDto user,
  }) = _RegisterData;

  factory RegisterData.fromJson(Map<String, dynamic> json) =>
      _$RegisterDataFromJson(json);
}
