// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CurrencyState)
final currencyStateProvider = CurrencyStateProvider._();

final class CurrencyStateProvider
    extends $NotifierProvider<CurrencyState, Currency> {
  CurrencyStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currencyStateProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currencyStateHash();

  @$internal
  @override
  CurrencyState create() => CurrencyState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Currency value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Currency>(value),
    );
  }
}

String _$currencyStateHash() => r'c76574261ddefdd3d36cc2b1ea4df20ffaf6740b';

abstract class _$CurrencyState extends $Notifier<Currency> {
  Currency build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Currency, Currency>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Currency, Currency>,
              Currency,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
