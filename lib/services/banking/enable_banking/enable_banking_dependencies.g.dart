// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_banking_dependencies.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(enableBankingCredentialsStore)
final enableBankingCredentialsStoreProvider =
    EnableBankingCredentialsStoreProvider._();

final class EnableBankingCredentialsStoreProvider
    extends
        $FunctionalProvider<
          EnableBankingCredentialsStore,
          EnableBankingCredentialsStore,
          EnableBankingCredentialsStore
        >
    with $Provider<EnableBankingCredentialsStore> {
  EnableBankingCredentialsStoreProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'enableBankingCredentialsStoreProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$enableBankingCredentialsStoreHash();

  @$internal
  @override
  $ProviderElement<EnableBankingCredentialsStore> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EnableBankingCredentialsStore create(Ref ref) {
    return enableBankingCredentialsStore(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EnableBankingCredentialsStore value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EnableBankingCredentialsStore>(
        value,
      ),
    );
  }
}

String _$enableBankingCredentialsStoreHash() =>
    r'f9309ea782f481025bf702f1656a927ec854e1b0';

@ProviderFor(enableBankingAuth)
final enableBankingAuthProvider = EnableBankingAuthProvider._();

final class EnableBankingAuthProvider
    extends
        $FunctionalProvider<
          EnableBankingAuth,
          EnableBankingAuth,
          EnableBankingAuth
        >
    with $Provider<EnableBankingAuth> {
  EnableBankingAuthProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'enableBankingAuthProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$enableBankingAuthHash();

  @$internal
  @override
  $ProviderElement<EnableBankingAuth> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EnableBankingAuth create(Ref ref) {
    return enableBankingAuth(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EnableBankingAuth value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EnableBankingAuth>(value),
    );
  }
}

String _$enableBankingAuthHash() => r'e6320a9ab19b8d092113b82b5f64e8b47e3352a6';

@ProviderFor(enableBankingApi)
final enableBankingApiProvider = EnableBankingApiProvider._();

final class EnableBankingApiProvider
    extends
        $FunctionalProvider<
          EnableBankingApi,
          EnableBankingApi,
          EnableBankingApi
        >
    with $Provider<EnableBankingApi> {
  EnableBankingApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'enableBankingApiProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$enableBankingApiHash();

  @$internal
  @override
  $ProviderElement<EnableBankingApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  EnableBankingApi create(Ref ref) {
    return enableBankingApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EnableBankingApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EnableBankingApi>(value),
    );
  }
}

String _$enableBankingApiHash() => r'9a27c454e77e7925f02f027d8da38b30d519e2ca';

@ProviderFor(enableBankingCredentialsService)
final enableBankingCredentialsServiceProvider =
    EnableBankingCredentialsServiceProvider._();

final class EnableBankingCredentialsServiceProvider
    extends
        $FunctionalProvider<
          EnableBankingCredentialsService,
          EnableBankingCredentialsService,
          EnableBankingCredentialsService
        >
    with $Provider<EnableBankingCredentialsService> {
  EnableBankingCredentialsServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'enableBankingCredentialsServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$enableBankingCredentialsServiceHash();

  @$internal
  @override
  $ProviderElement<EnableBankingCredentialsService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EnableBankingCredentialsService create(Ref ref) {
    return enableBankingCredentialsService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EnableBankingCredentialsService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EnableBankingCredentialsService>(
        value,
      ),
    );
  }
}

String _$enableBankingCredentialsServiceHash() =>
    r'0136ca8ff16605b3c1ca6c64b74bcc116f26d3b5';

@ProviderFor(EnableBankingSettings)
final enableBankingSettingsProvider = EnableBankingSettingsProvider._();

final class EnableBankingSettingsProvider
    extends
        $AsyncNotifierProvider<EnableBankingSettings, EnableBankingConfig?> {
  EnableBankingSettingsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'enableBankingSettingsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$enableBankingSettingsHash();

  @$internal
  @override
  EnableBankingSettings create() => EnableBankingSettings();
}

String _$enableBankingSettingsHash() =>
    r'c7dd3901e953243d6b7876a7d25c870379b7cfb1';

abstract class _$EnableBankingSettings
    extends $AsyncNotifier<EnableBankingConfig?> {
  FutureOr<EnableBankingConfig?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<EnableBankingConfig?>, EnableBankingConfig?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<EnableBankingConfig?>,
                EnableBankingConfig?
              >,
              AsyncValue<EnableBankingConfig?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
