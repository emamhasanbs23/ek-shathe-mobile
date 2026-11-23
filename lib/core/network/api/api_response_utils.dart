import 'package:ek_shathe_mobile/core/error/failures.dart';
import 'package:ek_shathe_mobile/core/network/api/api_envelope.dart';

/// Parses the `{ message, error, code [, results] }` envelope from
/// arbitrary Dio response data.
ApiEnvelope? parseApiEnvelope(Object? data) {
  if (data is! Map) return null;
  final map = Map<String, dynamic>.from(data);
  if (!map.containsKey('message') &&
      !map.containsKey('error') &&
      !map.containsKey('code')) {
    return null;
  }
  return ApiEnvelope.fromJson(map);
}

/// Returns an [ApiFailure] when the envelope reports `error: true`.
Failure? failureFromEnvelope({
  required bool? error,
  required String? message,
  int? code,
}) {
  if (error != true) return null;

  final trimmed = message?.trim();
  return ApiFailure(
    message: trimmed != null && trimmed.isNotEmpty ? trimmed : null,
    code: code,
  );
}

/// Convenience for typed response models that mirror the envelope fields.
Failure? failureFromResponseFields({
  required bool? error,
  required String? message,
  int? code,
}) => failureFromEnvelope(error: error, message: message, code: code);

/// Builds an [ApiFailure] from a parsed envelope, or `null` when not an error.
Failure? failureFromParsedEnvelope(ApiEnvelope? envelope) {
  if (envelope == null) return null;
  return failureFromEnvelope(
    error: envelope.error,
    message: envelope.message,
    code: envelope.code,
  );
}
