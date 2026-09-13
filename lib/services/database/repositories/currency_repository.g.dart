// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(currencyRepository)
final currencyRepositoryProvider = CurrencyRepositoryProvider._();

final class CurrencyRepositoryProvider
    extends
        $FunctionalProvider<
          CurrencyRepository,
          CurrencyRepository,
          CurrencyRepository
        >
    with $Provider<CurrencyRepository> {
  CurrencyRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currencyRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currencyRepositoryHash();

  @$internal
  @override
  $ProviderElement<CurrencyRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CurrencyRepository create(Ref ref) {
    return currencyRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CurrencyRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CurrencyRepository>(value),
    );
  }
}

String _$currencyRepositoryHash() =>
    r'017b1c0642bc117e115531060d2411ebbd53cc42';
