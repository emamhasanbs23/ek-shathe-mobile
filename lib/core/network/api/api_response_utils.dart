import 'package:ek_shathe_mobile/core/error/failures.dart';
import 'package:ek_shathe_mobile/core/network/api/api_envelope.dart';

/// Parses the success/message envelope from Dio response data.
ApiEnvelope? parseApiEnvelope(Object? data) {
  if (data is! Map) return null;
  final map = Map<String, dynamic>.from(data);
  if (!map.containsKey('success') && !map.containsKey('message')) {
    return null;
  }
  return ApiEnvelope.fromJson(map);
}

/// Returns an [ApiFailure] when the envelope reports `success: false`.
Failure? failureFromSuccessFlag({
  required bool? success,
  String? message,
}) {
  if (success != false) return null;

  final trimmed = message?.trim();
  return ApiFailure(
    message: trimmed != null && trimmed.isNotEmpty ? trimmed : null,
  );
}

/// Builds an [ApiFailure] from a parsed envelope, or `null` when not an error.
Failure? failureFromParsedEnvelope(ApiEnvelope? envelope) {
  if (envelope == null) return null;
  return failureFromSuccessFlag(
    success: envelope.success,
    message: envelope.message,
  );
}
