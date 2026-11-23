import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_envelope.freezed.dart';
part 'api_envelope.g.dart';

/// Implemented by feature DTOs that mirror the Ek-Shathe wire envelope.
abstract interface class ApiResponse {
  int? get code;
  String? get message;
  bool? get error;
}

/// Ek-Shathe wire envelope shared by success and error responses.
///
/// Success: `{ message, error: false, code, results: { ... } }`
/// Error:   `{ message, error: true, code }` (no `results`)
@freezed
abstract class ApiEnvelope with _$ApiEnvelope implements ApiResponse {
  const factory ApiEnvelope({
    int? code,
    String? message,
    bool? error,
  }) = _ApiEnvelope;

  factory ApiEnvelope.fromJson(Map<String, dynamic> json) =>
      _$ApiEnvelopeFromJson(json);
}
