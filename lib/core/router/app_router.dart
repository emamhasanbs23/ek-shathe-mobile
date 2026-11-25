import 'package:ek_shathe_mobile/core/l10n/l10n_extension.dart';
import 'package:ek_shathe_mobile/core/router/app_routes.dart';
import 'package:ek_shathe_mobile/core/theme/app_size.dart';
import 'package:ek_shathe_mobile/core/theme/theme_context_extension.dart';
import 'package:ek_shathe_mobile/features/auth/presentation/login_page.dart';
import 'package:ek_shathe_mobile/features/auth/presentation/register_page.dart';
import 'package:ek_shathe_mobile/features/auth/presentation/riverpod/auth_providers.dart';
import 'package:ek_shathe_mobile/features/home/presentation/home_page.dart';
import 'package:ek_shathe_mobile/features/splash/presentation/riverpod/splash_providers.dart';
import 'package:ek_shathe_mobile/features/splash/presentation/splash_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@Riverpod(keepAlive: true)
GoRouter appRouter(Ref ref) {
  final authRefresh = _AuthRefreshNotifier(ref);
  ref.onDispose(authRefresh.dispose);

  return GoRouter(
    initialLocation: AppRoutePaths.splash,
    refreshListenable: authRefresh,
    redirect: (context, state) => authRedirect(
      state.matchedLocation,
      ref.read(splashControllerProvider),
      ref.read(isAuthenticatedProvider),
    ),
    routes: [
      GoRoute(
        path: AppRoutePaths.splash,
        name: AuthRoutes.splash,
        builder: (_, _) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutePaths.home,
        name: HomeRoutes.home,
        builder: (_, _) => const HomePage(),
      ),
      GoRoute(
        path: AppRoutePaths.login,
        name: AuthRoutes.login,
        builder: (_, _) => const LoginPage(),
      ),
      GoRoute(
        path: AppRoutePaths.register,
        name: AuthRoutes.register,
        builder: (_, _) => const RegisterPage(),
      ),
    ],
    errorBuilder: (context, state) => UnknownRoutePage(error: state.error),
  );
}

String? authRedirect(
  String matchedLocation,
  SplashState splashState,
  AsyncValue<bool> authAsync,
) {
  if (!splashState.isReady) {
    return matchedLocation == AppRoutePaths.splash
        ? null
        : AppRoutePaths.splash;
  }

  final isLoggedIn = authAsync.isLoading
      ? splashState.isLoggedIn
      : (authAsync.value ?? splashState.isLoggedIn);
  final goingToLogin = matchedLocation == AppRoutePaths.login;
  final goingToRegister = matchedLocation == AppRoutePaths.register;
  final onSplash = matchedLocation == AppRoutePaths.splash;

  if (onSplash) {
    return isLoggedIn ? AppRoutePaths.home : AppRoutePaths.login;
  }

  if (!isLoggedIn && !goingToLogin && !goingToRegister) {
    return AppRoutePaths.login;
  }
  if (isLoggedIn && (goingToLogin || goingToRegister)) {
    return AppRoutePaths.home;
  }
  return null;
}

class _AuthRefreshNotifier extends ChangeNotifier {
  _AuthRefreshNotifier(this._ref) {
    _authSubscription = _ref.listen<AsyncValue<bool>>(
      isAuthenticatedProvider,
      (_, _) => notifyListeners(),
    );
    _splashSubscription = _ref.listen<SplashState>(
      splashControllerProvider,
      (_, _) => notifyListeners(),
    );
  }

  final Ref _ref;
  late final ProviderSubscription<AsyncValue<bool>> _authSubscription;
  late final ProviderSubscription<SplashState> _splashSubscription;

  @override
  void dispose() {
    _authSubscription.close();
    _splashSubscription.close();
    super.dispose();
  }
}

class UnknownRoutePage extends StatelessWidget {
  const UnknownRoutePage({super.key, this.error});

  final Object? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.language.errorNotFound)),
      body: Center(
        child: Padding(
          padding: AppSize.pagePadding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.help_outline,
                size: AppSize.iconLg,
                color: context.color.icon,
              ),
              SizedBox(height: AppSize.spaceLg),
              Text(context.language.errorNotFound, textAlign: TextAlign.center),
              SizedBox(height: AppSize.spaceLg),
              ElevatedButton(
                onPressed: () => context.go(AppRoutePaths.home),
                child: Text(context.language.homeTitle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
