// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Income)
final incomeProvider = IncomeProvider._();

final class IncomeProvider extends $NotifierProvider<Income, num> {
  IncomeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'incomeProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$incomeHash();

  @$internal
  @override
  Income create() => Income();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(num value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<num>(value),
    );
  }
}

String _$incomeHash() => r'0365df8486b828767b09e4888cc42482e0bdfe65';

abstract class _$Income extends $Notifier<num> {
  num build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<num, num>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<num, num>,
              num,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(Expense)
final expenseProvider = ExpenseProvider._();

final class ExpenseProvider extends $NotifierProvider<Expense, num> {
  ExpenseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'expenseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$expenseHash();

  @$internal
  @override
  Expense create() => Expense();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(num value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<num>(value),
    );
  }
}

String _$expenseHash() => r'b28ce9bb74ce49d63d7917f775706569e3be0a25';

abstract class _$Expense extends $Notifier<num> {
  num build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<num, num>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<num, num>,
              num,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(CurrentMonthList)
final currentMonthListProvider = CurrentMonthListProvider._();

final class CurrentMonthListProvider
    extends $NotifierProvider<CurrentMonthList, List<FlSpot>> {
  CurrentMonthListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentMonthListProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentMonthListHash();

  @$internal
  @override
  CurrentMonthList create() => CurrentMonthList();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<FlSpot> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<FlSpot>>(value),
    );
  }
}

String _$currentMonthListHash() => r'51b62d7f3ae9e37117f97baed1871f70d0ef9d9f';

abstract class _$CurrentMonthList extends $Notifier<List<FlSpot>> {
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

@ProviderFor(LastMonthList)
final lastMonthListProvider = LastMonthListProvider._();

final class LastMonthListProvider
    extends $NotifierProvider<LastMonthList, List<FlSpot>> {
  LastMonthListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'lastMonthListProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$lastMonthListHash();

  @$internal
  @override
  LastMonthList create() => LastMonthList();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<FlSpot> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<FlSpot>>(value),
    );
  }
}

String _$lastMonthListHash() => r'2e20b69548409d53faa3b0dce7aecf07afd2a3a9';

abstract class _$LastMonthList extends $Notifier<List<FlSpot>> {
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

@ProviderFor(dashboard)
final dashboardProvider = DashboardProvider._();

final class DashboardProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  DashboardProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dashboardProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashboardHash();

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    return dashboard(ref);
  }
}

String _$dashboardHash() => r'0dec7cfaddb22e949425cbff57127e06ce4146dc';
