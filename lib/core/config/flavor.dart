/// Supported build flavors.
///
/// Each flavor points at a different backend, has a different display name,
/// and controls dev-only niceties like Dio request logging.
///
/// Flavors map to different backends and display names. Staging/prod hosts
/// are placeholders until those environments exist; override any URL with
/// `--dart-define=BASE_URL=...` (and related defines).
enum Flavor {
  dev,
  staging,
  prod;

  /// Parses a flavor from a `String` (typically the `--dart-define` value).
  /// Falls back to [Flavor.dev] when the value is unknown so development never
  /// crashes on a typo.
  static Flavor fromString(String? value) {
    switch (value) {
      case 'dev':
        return Flavor.dev;
      case 'staging':
        return Flavor.staging;
      case 'prod':
        return Flavor.prod;
      default:
        return Flavor.dev;
    }
  }
}

/// Static accessor for build-time `--dart-define` overrides. Reads each value
/// once; safe to call from any layer.
///
/// Build-time overrides (any of these win over the flavor defaults):
///
///   * `BASE_URL`        — REST API root. See [FlavorConfig.baseUrl].
///   * `PAGES_URL`       — public web/pages host. See [FlavorConfig.pagesUrl].
///   * `CLOUD_FRONT_URL` — media CDN base. See [FlavorConfig.cloudFrontUrl].
///   * `APP_NAME`        — display name. See [FlavorConfig.appName].
///   * `DIO_LOGGING`     — `true` / `false`. Forces the Dio pretty logger on
///     or off regardless of flavor.
class Env {
  Env._();

  static const _baseUrlDefine = String.fromEnvironment('BASE_URL');
  static const _pagesUrlDefine = String.fromEnvironment('PAGES_URL');
  static const _cloudFrontUrlDefine = String.fromEnvironment('CLOUD_FRONT_URL');
  static const _appNameDefine = String.fromEnvironment('APP_NAME');
  static const _dioLoggingDefine = String.fromEnvironment('DIO_LOGGING');

  static String? get baseUrl => _baseUrlDefine.isEmpty ? null : _baseUrlDefine;

  static String? get pagesUrl =>
      _pagesUrlDefine.isEmpty ? null : _pagesUrlDefine;

  static String? get cloudFrontUrl =>
      _cloudFrontUrlDefine.isEmpty ? null : _cloudFrontUrlDefine;

  static String? get appName => _appNameDefine.isEmpty ? null : _appNameDefine;

  static bool? get dioLogging {
    if (_dioLoggingDefine.isEmpty) return null;
    return _dioLoggingDefine.toLowerCase() == 'true' ||
        _dioLoggingDefine == '1';
  }
}

/// Runtime configuration derived from the active [Flavor].
///
/// Populated once during `bootstrap` and consumed via
/// `flavorConfigProvider`.
class FlavorConfig {
  const FlavorConfig({
    required this.flavor,
    required this.baseUrl,
    required this.pagesUrl,
    required this.cloudFrontUrl,
    required this.appName,
    required this.enableDioLogging,
  });

  /// Resolves the runtime config for [flavor], layered with any
  /// `--dart-define` overrides from [Env]. Build-time overrides win over
  /// the flavor defaults so CI can point at any backend without touching
  /// code.
  factory FlavorConfig.fromFlavor(Flavor flavor) {
    final defaults = _defaultsFor(flavor);
    return FlavorConfig(
      flavor: flavor,
      baseUrl: Env.baseUrl ?? defaults.baseUrl,
      pagesUrl: Env.pagesUrl ?? defaults.pagesUrl,
      cloudFrontUrl: Env.cloudFrontUrl ?? defaults.cloudFrontUrl,
      appName: Env.appName ?? defaults.appName,
      enableDioLogging: Env.dioLogging ?? defaults.enableDioLogging,
    );
  }

  final Flavor flavor;
  final String baseUrl;
  final String pagesUrl;
  final String cloudFrontUrl;
  final String appName;
  final bool enableDioLogging;

  bool get isProd => flavor == Flavor.prod;

  static const FlavorConfig _devDefaults = FlavorConfig(
    flavor: Flavor.dev,
    baseUrl: 'http://localhost:5000/',
    pagesUrl: 'http://localhost:5000/',
    cloudFrontUrl: 'http://localhost:5000/',
    appName: 'Ek-Shathe (Dev)',
    enableDioLogging: true,
  );

  // Placeholder host: Ek-Shathe has no dedicated staging backend yet.
  static const FlavorConfig _stagingDefaults = FlavorConfig(
    flavor: Flavor.staging,
    baseUrl: 'https://api-staging.ek-shathe.com/',
    pagesUrl: 'https://staging.ek-shathe.com/',
    cloudFrontUrl: 'https://cdn-staging.ek-shathe.com',
    appName: 'Ek-Shathe (Staging)',
    enableDioLogging: true,
  );

  static const FlavorConfig _prodDefaults = FlavorConfig(
    flavor: Flavor.prod,
    baseUrl: 'https://api.ek-shathe.com/',
    pagesUrl: 'https://ek-shathe.com/',
    cloudFrontUrl: 'https://cdn.ek-shathe.com',
    appName: 'Ek-Shathe',
    enableDioLogging: false,
  );

  static FlavorConfig _defaultsFor(Flavor flavor) {
    switch (flavor) {
      case Flavor.dev:
        return _devDefaults;
      case Flavor.staging:
        return _stagingDefaults;
      case Flavor.prod:
        return _prodDefaults;
    }
  }
}
