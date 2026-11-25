/// Central asset paths declared in pubspec.yaml.
abstract final class AppAssets {
  static const String branding = 'assets/branding/';
  static const String appLogo =
      '${branding}ek_shathe_full_logo_transparent.png';
  static const String appSymbol =
      '${branding}ek_shathe_symbol_transparent_1024.png';

  /// Prefer [appSymbol] for compact icon slots (splash top mark).
  static const String appIcon = appSymbol;

  /// Prefer [appLogo] for full wordmark.
  static const String appIconSplash = appLogo;
}
