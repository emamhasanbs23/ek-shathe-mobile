import 'dart:async';

import 'package:ek_shathe_mobile/core/theme/app_palette.dart';
import 'package:ek_shathe_mobile/features/splash/presentation/riverpod/splash_providers.dart';
import 'package:ek_shathe_mobile/features/splash/presentation/widgets/splash_branding.dart';
import 'package:ek_shathe_mobile/features/splash/presentation/widgets/splash_dialogs.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  SplashState? _lastHandledDialogState;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(ref.read(splashControllerProvider.notifier).start());
    });
  }

  @override
  Widget build(BuildContext context) {
    final splashState = ref.watch(splashControllerProvider);
    _handleDialogs(splashState);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: AppPalette.white,
      ),
      child: const Scaffold(
        backgroundColor: AppPalette.white,
        body: SplashBranding(),
      ),
    );
  }

  void _handleDialogs(SplashState splashState) {
    if (splashState == _lastHandledDialogState) return;

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (!mounted || splashState == _lastHandledDialogState) return;
      _lastHandledDialogState = splashState;

      switch (splashState) {
        case SplashNoInternet():
          await showSplashNoInternetDialog(
            context,
            onRetry: ref.read(splashControllerProvider.notifier).retry,
          );
          _lastHandledDialogState = null;
        case SplashError():
          await showSplashErrorDialog(
            context,
            onRetry: ref.read(splashControllerProvider.notifier).retry,
          );
          _lastHandledDialogState = null;
        case SplashForceUpdate():
          await showSplashForceUpdateDialog(context);
        case SplashOptionalUpdate():
          await showSplashOptionalUpdateDialog(
            context,
            onLater: ref
                .read(splashControllerProvider.notifier)
                .dismissOptionalUpdate,
          );
          _lastHandledDialogState = null;
        case SplashIntro():
        case SplashLoading():
        case SplashReady():
          break;
      }
    });
  }
}
