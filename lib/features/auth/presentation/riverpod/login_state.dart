import 'package:ek_shathe_mobile/core/error/failures.dart';

sealed class LoginState {
  const LoginState();
}

final class LoginIdle extends LoginState {
  const LoginIdle();
}

final class LoginSubmitting extends LoginState {
  const LoginSubmitting();
}

final class LoginSuccess extends LoginState {
  const LoginSuccess();
}

final class LoginError extends LoginState {
  const LoginError(this.failure);

  final Failure failure;
}
