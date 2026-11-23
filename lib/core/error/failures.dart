import 'package:ek_shathe_mobile/core/l10n/l10n_extension.dart';
import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart' show Either;

/// Base type for all domain-level failures.
///
/// Repositories return [Failure] inside [Either] values so the presentation
/// layer can branch on the concrete subtype without leaking exceptions.
///
/// The [message] field is for logging and API/server text only. User-visible
/// copy must come from [toMessage] (ARB-backed), except [ApiFailure] which
/// may surface the server-provided [message] when present.
sealed class Failure implements Exception {
  const Failure(this.message);

  /// Log / debug description, or API text for [ApiFailure].
  final String message;

  /// Maps this failure to localized UI copy. Always use this in widgets —
  /// never show [message] directly unless you know it is API-localized text.
  String toMessage(BuildContext context) {
    return switch (this) {
      ApiFailure(:final message) =>
        message.isNotEmpty ? message : context.language.errorRequestFailed,
      NoConnectionFailure() => context.language.errorNoConnection,
      TimeoutFailure() => context.language.errorTimeout,
      ServerFailure() => context.language.errorServer,
      NetworkFailure() => context.language.errorNetwork,
      UnauthorizedFailure() => context.language.errorUnauthorized,
      NoRefreshTokenFailure() => context.language.errorNoRefreshToken,
      NotFoundFailure() => context.language.errorNotFound,
      ValidationFailure(:final errors) =>
        errors?.values.firstOrNull ?? context.language.errorValidation,
      RateLimitFailure() => context.language.errorRateLimit,
      CancelledFailure() => context.language.errorCancelled,
      SerializationFailure() => context.language.errorSerialization,
      UnexpectedFailure() => context.language.errorUnexpected,
      InvalidCredentialsFailure() => context.language.errorInvalidCredentials,
      LoginFailedFailure() => context.language.errorLoginFailed,
      TokenRefreshFailedFailure() => context.language.errorTokenRefreshFailed,
      LoadUserFailedFailure() => context.language.errorLoadUserFailed,
      LoginMissingUserFailure() => context.language.errorLoginMissingUser,
    };
  }
}

final class NoConnectionFailure extends Failure {
  const NoConnectionFailure() : super('NoConnectionFailure');
}

final class TimeoutFailure extends Failure {
  const TimeoutFailure() : super('TimeoutFailure');
}

final class NetworkFailure extends Failure {
  const NetworkFailure([super.message = 'NetworkFailure']);
}

final class CancelledFailure extends Failure {
  const CancelledFailure() : super('CancelledFailure');
}

final class ServerFailure extends Failure {
  const ServerFailure([super.message = 'ServerFailure']);
}

final class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure([super.message = 'UnauthorizedFailure']);
}

final class NoRefreshTokenFailure extends Failure {
  const NoRefreshTokenFailure() : super('NoRefreshTokenFailure');
}

final class NotFoundFailure extends Failure {
  const NotFoundFailure([super.message = 'NotFoundFailure']);
}

final class ValidationFailure extends Failure {
  const ValidationFailure({this.errors}) : super('ValidationFailure');

  final Map<String, String>? errors;
}

final class RateLimitFailure extends Failure {
  const RateLimitFailure({this.retryAfter}) : super('RateLimitFailure');

  final int? retryAfter;
}

final class SerializationFailure extends Failure {
  const SerializationFailure([super.message = 'SerializationFailure']);
}

final class InvalidCredentialsFailure extends Failure {
  const InvalidCredentialsFailure() : super('InvalidCredentialsFailure');
}

/// Business/API error returned by the backend (`error: true` with a `message`).
///
/// When [message] is non-empty it is shown as returned by the API (server
/// locale). When empty, [toMessage] falls back to the localized
/// `errorRequestFailed` string.
final class ApiFailure extends Failure {
  const ApiFailure({String? message, this.code}) : super(message ?? '');

  final int? code;
}

final class UnexpectedFailure extends Failure {
  const UnexpectedFailure([super.message = 'UnexpectedFailure']);
}

final class LoginFailedFailure extends Failure {
  const LoginFailedFailure() : super('LoginFailedFailure');
}

final class TokenRefreshFailedFailure extends Failure {
  const TokenRefreshFailedFailure() : super('TokenRefreshFailedFailure');
}

final class LoadUserFailedFailure extends Failure {
  const LoadUserFailedFailure() : super('LoadUserFailedFailure');
}

final class LoginMissingUserFailure extends Failure {
  const LoginMissingUserFailure() : super('LoginMissingUserFailure');
}
