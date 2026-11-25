import 'package:ek_shathe_mobile/core/connectivity/connectivity_service.dart';
import 'package:ek_shathe_mobile/core/error/failures.dart';
import 'package:ek_shathe_mobile/core/network/api/config_api.dart';
import 'package:ek_shathe_mobile/core/network/dio_client.dart';
import 'package:ek_shathe_mobile/core/storage/secure_storage_service.dart';
import 'package:ek_shathe_mobile/features/auth/presentation/riverpod/auth_providers.dart';
import 'package:ek_shathe_mobile/features/splash/data/repositories/splash_repository_impl.dart';
import 'package:ek_shathe_mobile/features/splash/domain/repositories/splash_repository.dart';
import 'package:ek_shathe_mobile/features/splash/presentation/riverpod/splash_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

export 'splash_state.dart';

part 'splash_providers.g.dart';

@Riverpod(keepAlive: true)
ConfigApi configApi(Ref ref) {
  return ConfigApi(ref.watch(dioProvider));
}

@Riverpod(keepAlive: true)
SplashRepository splashRepository(Ref ref) {
  return SplashRepositoryImpl(
    api: ref.watch(configApiProvider),
    storage: ref.watch(secureStorageServiceProvider),
  );
}

@Riverpod(keepAlive: true)
class SplashController extends _$SplashController {
  static const _holdDuration = Duration(milliseconds: 600);

  @override
  SplashState build() => const SplashIntro();

  Future<void> start() => _run();

  Future<void> retry() => _run();

  /// Kept for update-dialog wiring; config/update check is deferred for now.
  Future<void> dismissOptionalUpdate() async {
    await ref.read(splashRepositoryProvider).markOptionalUpdateDialogShown();
    await _bootstrapSession();
  }

  Future<void> _run() async {
    state = const SplashIntro();
    await Future<void>.delayed(_holdDuration);
    await _bootstrap();
  }

  Future<void> _bootstrap() async {
    state = const SplashLoading();
    // Config / app-update API is deferred — splash only restores session.
    await _bootstrapSession();
  }

  Future<bool> _ensureOnline() async {
    final connected = await ref.read(connectivityServiceProvider).isConnected();
    if (!connected) {
      state = const SplashNoInternet();
      return false;
    }
    return true;
  }

  Future<void> _bootstrapSession() async {
    final isAuthenticated = await ref
        .read(authRepositoryProvider)
        .isAuthenticated();

    if (!isAuthenticated) {
      state = const SplashReady(isLoggedIn: false);
      ref.invalidate(isAuthenticatedProvider);
      return;
    }

    if (!await _ensureOnline()) return;

    state = const SplashLoading();

    final userResult = await ref.read(getCurrentUserUseCaseProvider).call();
    userResult.fold(
      (failure) {
        if (failure is NetworkFailure || failure is NoConnectionFailure) {
          state = const SplashNoInternet();
        } else {
          state = const SplashError();
        }
      },
      (_) {
        state = const SplashReady(isLoggedIn: true);
        ref
          ..invalidate(isAuthenticatedProvider)
          ..invalidate(currentUserProvider);
      },
    );
  }
}
