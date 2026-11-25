import 'package:ek_shathe_mobile/core/network/api/auth_api.dart';
import 'package:ek_shathe_mobile/core/network/dio_client.dart';
import 'package:ek_shathe_mobile/core/session/session_expired.dart';
import 'package:ek_shathe_mobile/core/storage/secure_storage_service.dart';
import 'package:ek_shathe_mobile/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:ek_shathe_mobile/features/auth/domain/entities/auth_user.dart';
import 'package:ek_shathe_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:ek_shathe_mobile/features/auth/domain/usecases/get_current_user_use_case.dart';
import 'package:ek_shathe_mobile/features/auth/domain/usecases/login_use_case.dart';
import 'package:ek_shathe_mobile/features/auth/domain/usecases/logout_use_case.dart';
import 'package:ek_shathe_mobile/features/auth/domain/usecases/register_use_case.dart';
import 'package:ek_shathe_mobile/features/auth/presentation/riverpod/login_state.dart';
import 'package:ek_shathe_mobile/features/auth/presentation/riverpod/register_state.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

export 'login_state.dart';
export 'register_state.dart';

part 'auth_providers.g.dart';

@Riverpod(keepAlive: true)
AuthApi authApi(Ref ref) {
  return AuthApi(ref.watch(dioProvider));
}

@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) {
  return AuthRepositoryImpl(
    api: ref.watch(authApiProvider),
    storage: ref.watch(secureStorageServiceProvider),
  );
}

@Riverpod(keepAlive: true)
LoginUseCase loginUseCase(Ref ref) {
  return LoginUseCase(ref.watch(authRepositoryProvider));
}

@Riverpod(keepAlive: true)
RegisterUseCase registerUseCase(Ref ref) {
  return RegisterUseCase(ref.watch(authRepositoryProvider));
}

@Riverpod(keepAlive: true)
GetCurrentUserUseCase getCurrentUserUseCase(Ref ref) {
  return GetCurrentUserUseCase(ref.watch(authRepositoryProvider));
}

@Riverpod(keepAlive: true)
LogoutUseCase logoutUseCase(Ref ref) {
  return LogoutUseCase(ref.watch(authRepositoryProvider));
}

@Riverpod(keepAlive: true)
Future<AuthUser?> currentUser(Ref ref) async {
  final result = await ref.watch(getCurrentUserUseCaseProvider).call();
  switch (result) {
    case Left(:final value):
      throw value;
    case Right(:final value):
      return value;
  }
}

@Riverpod(keepAlive: true)
Future<bool> isAuthenticated(Ref ref) {
  ref.listen<bool>(sessionExpiredProvider, (previous, isExpired) {
    if (isExpired) {
      ref.invalidateSelf();
    }
  });
  return ref.watch(authRepositoryProvider).isAuthenticated();
}

@Riverpod(keepAlive: true)
class LoginController extends _$LoginController {
  @override
  LoginState build() => const LoginIdle();

  Future<bool> submit({
    required String email,
    required String password,
  }) async {
    state = const LoginSubmitting();
    final result = await ref
        .read(loginUseCaseProvider)
        .call(email: email, password: password);
    switch (result) {
      case Left(:final value):
        state = LoginError(value);
        return false;
      case Right():
        ref
          ..invalidate(isAuthenticatedProvider)
          ..invalidate(currentUserProvider);
        state = const LoginSuccess();
        return true;
    }
  }
}

@Riverpod(keepAlive: true)
class RegisterController extends _$RegisterController {
  @override
  RegisterState build() => const RegisterIdle();

  Future<bool> submit({
    required String name,
    required String email,
    required String password,
  }) async {
    state = const RegisterSubmitting();
    final result = await ref
        .read(registerUseCaseProvider)
        .call(name: name, email: email, password: password);
    switch (result) {
      case Left(:final value):
        state = RegisterError(value);
        return false;
      case Right():
        state = const RegisterSuccess();
        return true;
    }
  }
}

@Riverpod(keepAlive: true)
Future<void> Function() logoutController(Ref ref) {
  return () async {
    await ref.read(logoutUseCaseProvider).call();
    ref
      ..invalidate(isAuthenticatedProvider)
      ..invalidate(currentUserProvider);
    await ref.read(isAuthenticatedProvider.future);
  };
}
