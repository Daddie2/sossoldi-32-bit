// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budgets_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(monthlyBudgetsStats)
final monthlyBudgetsStatsProvider = MonthlyBudgetsStatsProvider._();

final class MonthlyBudgetsStatsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<BudgetStats>>,
          List<BudgetStats>,
          FutureOr<List<BudgetStats>>
        >
    with
        $FutureModifier<List<BudgetStats>>,
        $FutureProvider<List<BudgetStats>> {
  MonthlyBudgetsStatsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'monthlyBudgetsStatsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$monthlyBudgetsStatsHash();

  @$internal
  @override
  $FutureProviderElement<List<BudgetStats>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<BudgetStats>> create(Ref ref) {
    return monthlyBudgetsStats(ref);
  }
}

String _$monthlyBudgetsStatsHash() =>
    r'7ae2867a0f85fb5a0c350d5334eaf0fe538652da';

@ProviderFor(Budgets)
final budgetsProvider = BudgetsProvider._();

final class BudgetsProvider
    extends $AsyncNotifierProvider<Budgets, List<Budget>> {
  BudgetsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'budgetsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$budgetsHash();

  @$internal
  @override
  Budgets create() => Budgets();
}

String _$budgetsHash() => r'9f1e7815d90b0c4e800bfa4ffe1be10d85778ed3';

abstract class _$Budgets extends $AsyncNotifier<List<Budget>> {
  FutureOr<List<Budget>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Budget>>, List<Budget>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Budget>>, List<Budget>>,
              AsyncValue<List<Budget>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
