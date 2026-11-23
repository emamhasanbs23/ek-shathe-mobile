import 'dart:async';
import 'dart:io';

import 'package:ek_shathe_mobile/core/connectivity/connectivity_service.dart';
import 'package:ek_shathe_mobile/core/error/failures.dart';
import 'package:ek_shathe_mobile/core/network/api/config_api.dart';
import 'package:ek_shathe_mobile/core/network/dio_client.dart';
import 'package:ek_shathe_mobile/core/storage/secure_storage_service.dart';
import 'package:ek_shathe_mobile/features/auth/presentation/riverpod/auth_providers.dart';
import 'package:ek_shathe_mobile/features/splash/data/models/app_update_response.dart';
import 'package:ek_shathe_mobile/features/splash/data/repositories/splash_repository_impl.dart';
import 'package:ek_shathe_mobile/features/splash/domain/repositories/splash_repository.dart';
import 'package:ek_shathe_mobile/features/splash/presentation/riverpod/splash_state.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:package_info_plus/package_info_plus.dart';
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
  static const _introDuration = Duration(milliseconds: 700);
  static const _userFetchDelay = Duration(milliseconds: 500);

  @override
  SplashState build() => const SplashIntro();

  Future<void> start() => _run();

  Future<void> retry() => _run();

  Future<void> dismissOptionalUpdate() async {
    await ref.read(splashRepositoryProvider).markOptionalUpdateDialogShown();
    await _bootstrapSession();
  }

  Future<void> _run() async {
    state = const SplashIntro();
    await Future<void>.delayed(_introDuration);
    await _bootstrap();
  }

  Future<void> _bootstrap() async {
    state = const SplashLoading();

    if (!await _ensureOnline()) return;

    final canContinue = await _handleAppUpdate();
    if (!canContinue) return;

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

  Future<bool> _handleAppUpdate() async {
    final packageInfo = await PackageInfo.fromPlatform();
    final buildNumber = int.tryParse(packageInfo.buildNumber) ?? 1;
    final platform = !kIsWeb && Platform.isIOS ? 'ios' : 'android';

    final result = await ref
        .read(splashRepositoryProvider)
        .checkAppUpdate(platform: platform, buildNumber: buildNumber);

    switch (result) {
      case Left(:final value):
        if (value is NetworkFailure || value is NoConnectionFailure) {
          state = const SplashNoInternet();
        } else {
          state = const SplashError();
        }
        return false;
      case Right(:final value):
        final update = value;
        if (update == null) return true;

        switch (update.updateStatus) {
          case AppUpdateData.statusForce:
            state = SplashForceUpdate(update);
            return false;
          case AppUpdateData.statusOptional:
            unawaited(_maybeShowOptionalUpdate(update));
            return false;
          default:
            return true;
        }
    }
  }

  Future<void> _maybeShowOptionalUpdate(AppUpdateData update) async {
    final shouldShow = await ref
        .read(splashRepositoryProvider)
        .shouldShowOptionalUpdateDialog();
    if (shouldShow) {
      state = SplashOptionalUpdate(update);
      return;
    }
    await _bootstrapSession();
  }

  Future<void> _bootstrapSession() async {
    if (!await _ensureOnline()) return;

    state = const SplashLoading();

    final isAuthenticated = await ref
        .read(authRepositoryProvider)
        .isAuthenticated();

    if (!isAuthenticated) {
      state = const SplashReady(isLoggedIn: false);
      ref.invalidate(isAuthenticatedProvider);
      return;
    }

    await Future<void>.delayed(_userFetchDelay);

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
