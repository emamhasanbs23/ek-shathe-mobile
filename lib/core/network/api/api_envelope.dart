import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_envelope.freezed.dart';
part 'api_envelope.g.dart';

/// Implemented by feature DTOs that mirror the Ek-Shathe wire envelope.
abstract interface class ApiResponse {
  bool? get success;
  String? get message;
}

/// Ek-Shathe wire envelope shared by success and error responses.
///
/// Success: `{ success: true, data: { ... }, message? }`
/// Error:   `{ success: false, message, errors? }`
@freezed
abstract class ApiEnvelope with _$ApiEnvelope implements ApiResponse {
  const factory ApiEnvelope({
    bool? success,
    String? message,
    @Default([]) List<dynamic> errors,
  }) = _ApiEnvelope;

  factory ApiEnvelope.fromJson(Map<String, dynamic> json) =>
      _$ApiEnvelopeFromJson(json);
}
