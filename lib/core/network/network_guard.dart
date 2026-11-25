import 'package:dio/dio.dart';
import 'package:ek_shathe_mobile/core/error/dio_failure_mapper.dart';
import 'package:ek_shathe_mobile/core/logger/app_logger.dart';
import 'package:ek_shathe_mobile/core/network/api/api_envelope.dart';
import 'package:ek_shathe_mobile/core/network/api/api_response_utils.dart';

/// Wraps a single Retrofit / Dio call at the data-source boundary.
Future<T> guard<T>(String tag, Future<T> Function() call) async {
  try {
    return await call();
  } on DioException catch (error, stackTrace) {
    AppLogger.e('$tag failed', error: error, stackTrace: stackTrace);
    throw mapDioExceptionToFailure(error);
  }
}

/// Like `guard`, but also maps `success: false` envelope responses to Failure.
///
/// Repositories catch Failure and return Left(failure).
/// No per-call boilerplate.
Future<R> guardApi<R extends ApiResponse>(
  String tag,
  Future<R> Function() call,
) async {
  final response = await guard(tag, call);
  final envelopeFailure = failureFromSuccessFlag(
    success: response.success,
    message: response.message,
  );
  if (envelopeFailure != null) {
    throw envelopeFailure;
  }
  return response;
}
