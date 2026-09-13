// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(HighlightedMonth)
final highlightedMonthProvider = HighlightedMonthProvider._();

final class HighlightedMonthProvider
    extends $NotifierProvider<HighlightedMonth, int> {
  HighlightedMonthProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'highlightedMonthProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$highlightedMonthHash();

  @$internal
  @override
  HighlightedMonth create() => HighlightedMonth();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$highlightedMonthHash() => r'a1ef14823e7cb1ae85f8a7ec1ff59d8b2ce61f68';

abstract class _$HighlightedMonth extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(CurrentYearMontlyTransactions)
final currentYearMontlyTransactionsProvider =
    CurrentYearMontlyTransactionsProvider._();

final class CurrentYearMontlyTransactionsProvider
    extends $NotifierProvider<CurrentYearMontlyTransactions, List<FlSpot>> {
  CurrentYearMontlyTransactionsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentYearMontlyTransactionsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentYearMontlyTransactionsHash();

  @$internal
  @override
  CurrentYearMontlyTransactions create() => CurrentYearMontlyTransactions();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<FlSpot> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<FlSpot>>(value),
    );
  }
}

String _$currentYearMontlyTransactionsHash() =>
    r'fa7a76237fb16dc83fc65c6ed65abb07043f603c';

abstract class _$CurrentYearMontlyTransactions extends $Notifier<List<FlSpot>> {
  List<FlSpot> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<FlSpot>, List<FlSpot>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<FlSpot>, List<FlSpot>>,
              List<FlSpot>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(Statistics)
final statisticsProvider = StatisticsProvider._();

final class StatisticsProvider
    extends $AsyncNotifierProvider<Statistics, void> {
  StatisticsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'statisticsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$statisticsHash();

  @$internal
  @override
  Statistics create() => Statistics();
}

String _$statisticsHash() => r'01adffda42f5a54dab44c961a90328a1f60ded7f';

abstract class _$Statistics extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
