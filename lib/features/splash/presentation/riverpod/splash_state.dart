import 'package:ek_shathe_mobile/features/splash/data/models/app_update_response.dart';

sealed class SplashState {
  const SplashState();
}

/// Branding animation before bootstrap work starts.
final class SplashIntro extends SplashState {
  const SplashIntro();
}

/// App update check, session restore, or other async bootstrap work.
final class SplashLoading extends SplashState {
  const SplashLoading();
}

final class SplashNoInternet extends SplashState {
  const SplashNoInternet();
}

final class SplashError extends SplashState {
  const SplashError();
}

final class SplashForceUpdate extends SplashState {
  const SplashForceUpdate(this.update);
  final AppUpdateData update;
}

final class SplashOptionalUpdate extends SplashState {
  const SplashOptionalUpdate(this.update);
  final AppUpdateData update;
}

final class SplashReady extends SplashState {
  const SplashReady({required this.isLoggedIn});
  final bool isLoggedIn;
}

extension SplashStateX on SplashState {
  bool get isReady => this is SplashReady;

  bool get isLoggedIn => switch (this) {
    SplashReady(:final isLoggedIn) => isLoggedIn,
    _ => false,
  };
}
