import 'package:dio/dio.dart';
import 'package:ek_shathe_mobile/core/error/failures.dart';
import 'package:ek_shathe_mobile/core/network/api/api_response_utils.dart';

/// Translates a [DioException] into the closest domain [Failure].
Failure mapDioExceptionToFailure(DioException error) {
  return switch (error.type) {
    DioExceptionType.cancel => const CancelledFailure(),
    DioExceptionType.connectionError => const NoConnectionFailure(),
    DioExceptionType.connectionTimeout ||
    DioExceptionType.sendTimeout ||
    DioExceptionType.receiveTimeout => const TimeoutFailure(),
    _ => _mapStatusCode(error),
  };
}

Failure _mapStatusCode(DioException error) {
  final envelopeFailure = failureFromParsedEnvelope(
    parseApiEnvelope(error.response?.data),
  );
  if (envelopeFailure != null) {
    return envelopeFailure;
  }

  final status = error.response?.statusCode;

  if (status == null) {
    return const UnexpectedFailure();
  }

  return switch (status) {
    400 || 422 => const ValidationFailure(),
    401 || 403 => const UnauthorizedFailure(),
    404 => const NotFoundFailure(),
    429 => const RateLimitFailure(),
    >= 500 && < 600 => const ServerFailure(),
    _ => const UnexpectedFailure(),
  };
}
