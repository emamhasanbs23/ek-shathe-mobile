import 'package:ek_shathe_mobile/core/network/api/api_envelope.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_response.freezed.dart';
part 'logout_response.g.dart';

@freezed
abstract class LogoutResponse with _$LogoutResponse implements ApiResponse {
  const factory LogoutResponse({
    bool? success,
    String? message,
    Object? data,
  }) = _LogoutResponse;

  factory LogoutResponse.fromJson(Map<String, dynamic> json) =>
      _$LogoutResponseFromJson(json);
}
