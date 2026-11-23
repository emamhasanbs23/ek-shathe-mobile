/// Central route path strings for GoRouter.
///
/// Use these instead of raw path literals in redirects, `context.go`, and
/// tests. Route *names* for `goNamed` live on AuthRoutes and HomeRoutes.
abstract final class AppRoutePaths {
  static const splash = '/splash';
  static const home = '/';
  static const login = '/login';
}

/// GoRouter name constants for auth-related routes.
class AuthRoutes {
  AuthRoutes._();

  static const splash = 'splash';
  static const login = 'login';
}

/// GoRouter name constants for the home shell.
class HomeRoutes {
  HomeRoutes._();

  static const home = 'home';
}
