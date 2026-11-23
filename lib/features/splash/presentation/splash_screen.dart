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

class _SplashScreenState extends ConsumerState<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _iconFade;
  late final Animation<double> _iconScale;
  late final Animation<double> _logoFade;
  SplashState? _lastHandledDialogState;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(ref.read(splashControllerProvider.notifier).start());
    });
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1100),
    );
    _iconFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0, 0.55, curve: Curves.easeOut),
      ),
    );
    _iconScale = Tween<double>(begin: 0.45, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0, 0.85, curve: Curves.easeOutCubic),
      ),
    );
    _logoFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.5, 1, curve: Curves.easeOut),
      ),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
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
      child: Scaffold(
        backgroundColor: AppPalette.white,
        body: SafeArea(
          top: false,
          child: AnimatedBuilder(
            animation: _animationController,
            builder: (context, _) {
              return SplashBranding(
                iconOpacity: _iconFade.value,
                iconScale: _iconScale.value,
                logoOpacity: _logoFade.value,
              );
            },
          ),
        ),
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
