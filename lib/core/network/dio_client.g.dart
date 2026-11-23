// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dioAuthRepositoryBuilder)
final dioAuthRepositoryBuilderProvider = DioAuthRepositoryBuilderProvider._();

final class DioAuthRepositoryBuilderProvider
    extends
        $FunctionalProvider<
          DioAuthRepositoryBuilder,
          DioAuthRepositoryBuilder,
          DioAuthRepositoryBuilder
        >
    with $Provider<DioAuthRepositoryBuilder> {
  DioAuthRepositoryBuilderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioAuthRepositoryBuilderProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioAuthRepositoryBuilderHash();

  @$internal
  @override
  $ProviderElement<DioAuthRepositoryBuilder> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DioAuthRepositoryBuilder create(Ref ref) {
    return dioAuthRepositoryBuilder(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DioAuthRepositoryBuilder value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DioAuthRepositoryBuilder>(value),
    );
  }
}

String _$dioAuthRepositoryBuilderHash() =>
    r'535cb7dfb01b0fee7a0020111f062ffc1dbd1a10';

@ProviderFor(dio)
final dioProvider = DioProvider._();

final class DioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  DioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return dio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$dioHash() => r'cbf54e1b57ad9896912bda809f4e751c6d94f6b5';

@ProviderFor(sessionExpiredSignal)
final sessionExpiredSignalProvider = SessionExpiredSignalProvider._();

final class SessionExpiredSignalProvider
    extends
        $FunctionalProvider<void Function(), void Function(), void Function()>
    with $Provider<void Function()> {
  SessionExpiredSignalProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sessionExpiredSignalProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sessionExpiredSignalHash();

  @$internal
  @override
  $ProviderElement<void Function()> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  void Function() create(Ref ref) {
    return sessionExpiredSignal(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void Function() value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void Function()>(value),
    );
  }
}

String _$sessionExpiredSignalHash() =>
    r'6be0ca98702ced1bfecfac2bc75c2aeea363e4fe';
