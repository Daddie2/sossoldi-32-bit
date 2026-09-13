// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banking_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(bankingService)
final bankingServiceProvider = BankingServiceProvider._();

final class BankingServiceProvider
    extends
        $FunctionalProvider<BankingProvider, BankingProvider, BankingProvider>
    with $Provider<BankingProvider> {
  BankingServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bankingServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bankingServiceHash();

  @$internal
  @override
  $ProviderElement<BankingProvider> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  BankingProvider create(Ref ref) {
    return bankingService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BankingProvider value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BankingProvider>(value),
    );
  }
}

String _$bankingServiceHash() => r'e9bbd90dc80fdceb19e3774f9ae9ce7b2b79d12d';

@ProviderFor(bankInstitutionDirectory)
final bankInstitutionDirectoryProvider = BankInstitutionDirectoryProvider._();

final class BankInstitutionDirectoryProvider
    extends
        $FunctionalProvider<
          domain.BankInstitutionDirectory,
          domain.BankInstitutionDirectory,
          domain.BankInstitutionDirectory
        >
    with $Provider<domain.BankInstitutionDirectory> {
  BankInstitutionDirectoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bankInstitutionDirectoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bankInstitutionDirectoryHash();

  @$internal
  @override
  $ProviderElement<domain.BankInstitutionDirectory> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  domain.BankInstitutionDirectory create(Ref ref) {
    return bankInstitutionDirectory(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(domain.BankInstitutionDirectory value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<domain.BankInstitutionDirectory>(
        value,
      ),
    );
  }
}

String _$bankInstitutionDirectoryHash() =>
    r'26f8e132a4b9667603f07ebb5fc2207ec8490336';

@ProviderFor(bankConsentService)
final bankConsentServiceProvider = BankConsentServiceProvider._();

final class BankConsentServiceProvider
    extends
        $FunctionalProvider<
          domain.BankConsentService,
          domain.BankConsentService,
          domain.BankConsentService
        >
    with $Provider<domain.BankConsentService> {
  BankConsentServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bankConsentServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bankConsentServiceHash();

  @$internal
  @override
  $ProviderElement<domain.BankConsentService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  domain.BankConsentService create(Ref ref) {
    return bankConsentService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(domain.BankConsentService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<domain.BankConsentService>(value),
    );
  }
}

String _$bankConsentServiceHash() =>
    r'dedba6e17af0cd0b53ffff2cd98b83f47aa52113';

@ProviderFor(bankAccountDataSource)
final bankAccountDataSourceProvider = BankAccountDataSourceProvider._();

final class BankAccountDataSourceProvider
    extends
        $FunctionalProvider<
          domain.BankAccountDataSource,
          domain.BankAccountDataSource,
          domain.BankAccountDataSource
        >
    with $Provider<domain.BankAccountDataSource> {
  BankAccountDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bankAccountDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bankAccountDataSourceHash();

  @$internal
  @override
  $ProviderElement<domain.BankAccountDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  domain.BankAccountDataSource create(Ref ref) {
    return bankAccountDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(domain.BankAccountDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<domain.BankAccountDataSource>(value),
    );
  }
}

String _$bankAccountDataSourceHash() =>
    r'86baa2fdc9fa63047155379c8567ff04f0839b75';
