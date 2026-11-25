/// Central route path strings for GoRouter.
abstract final class AppRoutePaths {
  static const splash = '/splash';
  static const home = '/';
  static const login = '/login';
  static const register = '/register';
}

/// GoRouter name constants for auth-related routes.
class AuthRoutes {
  AuthRoutes._();

  static const splash = 'splash';
  static const login = 'login';
  static const register = 'register';
}

/// GoRouter name constants for the home shell.
class HomeRoutes {
  HomeRoutes._();

  static const home = 'home';
}
