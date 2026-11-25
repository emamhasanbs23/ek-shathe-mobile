// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(configApi)
final configApiProvider = ConfigApiProvider._();

final class ConfigApiProvider
    extends $FunctionalProvider<ConfigApi, ConfigApi, ConfigApi>
    with $Provider<ConfigApi> {
  ConfigApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'configApiProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$configApiHash();

  @$internal
  @override
  $ProviderElement<ConfigApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ConfigApi create(Ref ref) {
    return configApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ConfigApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ConfigApi>(value),
    );
  }
}

String _$configApiHash() => r'47eaae301ae412a4118cc71547307b68a153e6d4';

@ProviderFor(splashRepository)
final splashRepositoryProvider = SplashRepositoryProvider._();

final class SplashRepositoryProvider
    extends
        $FunctionalProvider<
          SplashRepository,
          SplashRepository,
          SplashRepository
        >
    with $Provider<SplashRepository> {
  SplashRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'splashRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$splashRepositoryHash();

  @$internal
  @override
  $ProviderElement<SplashRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SplashRepository create(Ref ref) {
    return splashRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SplashRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SplashRepository>(value),
    );
  }
}

String _$splashRepositoryHash() => r'302c9b2fb32d304d5a8ce389d9612b3a6ef6fe76';

@ProviderFor(SplashController)
final splashControllerProvider = SplashControllerProvider._();

final class SplashControllerProvider
    extends $NotifierProvider<SplashController, SplashState> {
  SplashControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'splashControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$splashControllerHash();

  @$internal
  @override
  SplashController create() => SplashController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SplashState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SplashState>(value),
    );
  }
}

String _$splashControllerHash() => r'1bff0e9e5b6c3d1013be29e1807631bfbf2ae664';

abstract class _$SplashController extends $Notifier<SplashState> {
  SplashState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<SplashState, SplashState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SplashState, SplashState>,
              SplashState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
