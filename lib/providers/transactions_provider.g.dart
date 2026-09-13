// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SelectedTransactionType)
final selectedTransactionTypeProvider = SelectedTransactionTypeProvider._();

final class SelectedTransactionTypeProvider
    extends $NotifierProvider<SelectedTransactionType, TransactionType> {
  SelectedTransactionTypeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedTransactionTypeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedTransactionTypeHash();

  @$internal
  @override
  SelectedTransactionType create() => SelectedTransactionType();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TransactionType value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TransactionType>(value),
    );
  }
}

String _$selectedTransactionTypeHash() =>
    r'f2763cf0edd162cae014ab8c4464dfb0c43e057a';

abstract class _$SelectedTransactionType extends $Notifier<TransactionType> {
  TransactionType build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<TransactionType, TransactionType>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TransactionType, TransactionType>,
              TransactionType,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(SelectedListIndex)
final selectedListIndexProvider = SelectedListIndexProvider._();

final class SelectedListIndexProvider
    extends $NotifierProvider<SelectedListIndex, int> {
  SelectedListIndexProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedListIndexProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedListIndexHash();

  @$internal
  @override
  SelectedListIndex create() => SelectedListIndex();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$selectedListIndexHash() => r'12c43c80727e2d569f80e36e34b23eaa43cd4d06';

abstract class _$SelectedListIndex extends $Notifier<int> {
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

@ProviderFor(lastTransactions)
final lastTransactionsProvider = LastTransactionsProvider._();

final class LastTransactionsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Transaction>>,
          List<Transaction>,
          FutureOr<List<Transaction>>
        >
    with
        $FutureModifier<List<Transaction>>,
        $FutureProvider<List<Transaction>> {
  LastTransactionsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'lastTransactionsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$lastTransactionsHash();

  @$internal
  @override
  $FutureProviderElement<List<Transaction>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Transaction>> create(Ref ref) {
    return lastTransactions(ref);
  }
}

String _$lastTransactionsHash() => r'753c12bb43db6d0ba9d6e2510a94b560ce65117e';

@ProviderFor(BankAccountTransfer)
final bankAccountTransferProvider = BankAccountTransferProvider._();

final class BankAccountTransferProvider
    extends $NotifierProvider<BankAccountTransfer, BankAccount?> {
  BankAccountTransferProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bankAccountTransferProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bankAccountTransferHash();

  @$internal
  @override
  BankAccountTransfer create() => BankAccountTransfer();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BankAccount? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BankAccount?>(value),
    );
  }
}

String _$bankAccountTransferHash() =>
    r'231f66706f7c246f3108ce5e9ec1a2d35c9249c1';

abstract class _$BankAccountTransfer extends $Notifier<BankAccount?> {
  BankAccount? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<BankAccount?, BankAccount?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BankAccount?, BankAccount?>,
              BankAccount?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(SelectedBankAccount)
final selectedBankAccountProvider = SelectedBankAccountProvider._();

final class SelectedBankAccountProvider
    extends $NotifierProvider<SelectedBankAccount, BankAccount?> {
  SelectedBankAccountProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedBankAccountProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedBankAccountHash();

  @$internal
  @override
  SelectedBankAccount create() => SelectedBankAccount();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BankAccount? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BankAccount?>(value),
    );
  }
}

String _$selectedBankAccountHash() =>
    r'b82d8fabe9eafd1792499bc6de5c3a49644db879';

abstract class _$SelectedBankAccount extends $Notifier<BankAccount?> {
  BankAccount? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<BankAccount?, BankAccount?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BankAccount?, BankAccount?>,
              BankAccount?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(SelectedDate)
final selectedDateProvider = SelectedDateProvider._();

final class SelectedDateProvider
    extends $NotifierProvider<SelectedDate, DateTime> {
  SelectedDateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedDateProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedDateHash();

  @$internal
  @override
  SelectedDate create() => SelectedDate();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DateTime value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DateTime>(value),
    );
  }
}

String _$selectedDateHash() => r'fdf972a4f743e6b51a1de0e2c3e081a747119c4b';

abstract class _$SelectedDate extends $Notifier<DateTime> {
  DateTime build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<DateTime, DateTime>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DateTime, DateTime>,
              DateTime,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(SelectedRecurringPay)
final selectedRecurringPayProvider = SelectedRecurringPayProvider._();

final class SelectedRecurringPayProvider
    extends $NotifierProvider<SelectedRecurringPay, bool> {
  SelectedRecurringPayProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedRecurringPayProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedRecurringPayHash();

  @$internal
  @override
  SelectedRecurringPay create() => SelectedRecurringPay();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$selectedRecurringPayHash() =>
    r'04afe3ba5b2fbc0c01c8c265ffbd0cedbb686cb8';

abstract class _$SelectedRecurringPay extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(Interval)
final intervalProvider = IntervalProvider._();

final class IntervalProvider extends $NotifierProvider<Interval, Recurrence> {
  IntervalProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'intervalProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$intervalHash();

  @$internal
  @override
  Interval create() => Interval();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Recurrence value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Recurrence>(value),
    );
  }
}

String _$intervalHash() => r'c66406b5edd1bdb10f02ab1a48fbfa2b5cc218bf';

abstract class _$Interval extends $Notifier<Recurrence> {
  Recurrence build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Recurrence, Recurrence>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Recurrence, Recurrence>,
              Recurrence,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(EndDate)
final endDateProvider = EndDateProvider._();

final class EndDateProvider extends $NotifierProvider<EndDate, DateTime?> {
  EndDateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'endDateProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$endDateHash();

  @$internal
  @override
  EndDate create() => EndDate();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DateTime? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DateTime?>(value),
    );
  }
}

String _$endDateHash() => r'd811c2943a0d43ffc6795477455b49441d73f000';

abstract class _$EndDate extends $Notifier<DateTime?> {
  DateTime? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<DateTime?, DateTime?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DateTime?, DateTime?>,
              DateTime?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(TotalAmount)
final totalAmountProvider = TotalAmountProvider._();

final class TotalAmountProvider extends $NotifierProvider<TotalAmount, num> {
  TotalAmountProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'totalAmountProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$totalAmountHash();

  @$internal
  @override
  TotalAmount create() => TotalAmount();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(num value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<num>(value),
    );
  }
}

String _$totalAmountHash() => r'4f041bbda98fd798833006922598cade18f409a3';

abstract class _$TotalAmount extends $Notifier<num> {
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

@ProviderFor(FilterLabel)
final filterLabelProvider = FilterLabelProvider._();

final class FilterLabelProvider
    extends $NotifierProvider<FilterLabel, String?> {
  FilterLabelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'filterLabelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$filterLabelHash();

  @$internal
  @override
  FilterLabel create() => FilterLabel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$filterLabelHash() => r'39da623961dafc7daba898fe94a78ef1a8533a33';

abstract class _$FilterLabel extends $Notifier<String?> {
  String? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(FilterDateStart)
final filterDateStartProvider = FilterDateStartProvider._();

final class FilterDateStartProvider
    extends $NotifierProvider<FilterDateStart, DateTime> {
  FilterDateStartProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'filterDateStartProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$filterDateStartHash();

  @$internal
  @override
  FilterDateStart create() => FilterDateStart();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DateTime value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DateTime>(value),
    );
  }
}

String _$filterDateStartHash() => r'aa47aaa3be636941061e8108c81fdd8c3ffa722e';

abstract class _$FilterDateStart extends $Notifier<DateTime> {
  DateTime build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<DateTime, DateTime>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DateTime, DateTime>,
              DateTime,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(FilterDateEnd)
final filterDateEndProvider = FilterDateEndProvider._();

final class FilterDateEndProvider
    extends $NotifierProvider<FilterDateEnd, DateTime> {
  FilterDateEndProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'filterDateEndProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$filterDateEndHash();

  @$internal
  @override
  FilterDateEnd create() => FilterDateEnd();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DateTime value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DateTime>(value),
    );
  }
}

String _$filterDateEndHash() => r'f99ad98d57e26e3e92b42c1c3c79271fcff49d04';

abstract class _$FilterDateEnd extends $Notifier<DateTime> {
  DateTime build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<DateTime, DateTime>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DateTime, DateTime>,
              DateTime,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(TypeFilter)
final typeFilterProvider = TypeFilterProvider._();

final class TypeFilterProvider
    extends $NotifierProvider<TypeFilter, Map<String, bool>> {
  TypeFilterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'typeFilterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$typeFilterHash();

  @$internal
  @override
  TypeFilter create() => TypeFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<String, bool> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<String, bool>>(value),
    );
  }
}

String _$typeFilterHash() => r'53aa6ca5e6701364762698229ea12f7e3e668a02';

abstract class _$TypeFilter extends $Notifier<Map<String, bool>> {
  Map<String, bool> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Map<String, bool>, Map<String, bool>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Map<String, bool>, Map<String, bool>>,
              Map<String, bool>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(DuplicatedTransaction)
final duplicatedTransactionProvider = DuplicatedTransactionProvider._();

final class DuplicatedTransactionProvider
    extends $NotifierProvider<DuplicatedTransaction, Transaction?> {
  DuplicatedTransactionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'duplicatedTransactionProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$duplicatedTransactionHash();

  @$internal
  @override
  DuplicatedTransaction create() => DuplicatedTransaction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Transaction? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Transaction?>(value),
    );
  }
}

String _$duplicatedTransactionHash() =>
    r'401f3c7bb5205fd2282855a8f2bb491ba9760dc2';

abstract class _$DuplicatedTransaction extends $Notifier<Transaction?> {
  Transaction? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Transaction?, Transaction?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Transaction?, Transaction?>,
              Transaction?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(TransactionsNotifier)
final transactionsProvider = TransactionsNotifierProvider._();

final class TransactionsNotifierProvider
    extends $AsyncNotifierProvider<TransactionsNotifier, List<Transaction>> {
  TransactionsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transactionsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$transactionsNotifierHash();

  @$internal
  @override
  TransactionsNotifier create() => TransactionsNotifier();
}

String _$transactionsNotifierHash() =>
    r'4ed8c12ce0480721075877a35ce80d9b32dd2704';

abstract class _$TransactionsNotifier
    extends $AsyncNotifier<List<Transaction>> {
  FutureOr<List<Transaction>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<Transaction>>, List<Transaction>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Transaction>>, List<Transaction>>,
              AsyncValue<List<Transaction>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(transactionsExists)
final transactionsExistsProvider = TransactionsExistsProvider._();

final class TransactionsExistsProvider
    extends $FunctionalProvider<AsyncValue<bool>, bool, FutureOr<bool>>
    with $FutureModifier<bool>, $FutureProvider<bool> {
  TransactionsExistsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transactionsExistsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$transactionsExistsHash();

  @$internal
  @override
  $FutureProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<bool> create(Ref ref) {
    return transactionsExists(ref);
  }
}

String _$transactionsExistsHash() =>
    r'31c55411a63b881991426e49bae144d7458d9570';

@ProviderFor(monthlyTransactions)
final monthlyTransactionsProvider = MonthlyTransactionsProvider._();

final class MonthlyTransactionsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Transaction>>,
          List<Transaction>,
          FutureOr<List<Transaction>>
        >
    with
        $FutureModifier<List<Transaction>>,
        $FutureProvider<List<Transaction>> {
  MonthlyTransactionsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'monthlyTransactionsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$monthlyTransactionsHash();

  @$internal
  @override
  $FutureProviderElement<List<Transaction>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Transaction>> create(Ref ref) {
    return monthlyTransactions(ref);
  }
}

String _$monthlyTransactionsHash() =>
    r'f42c7975ffc69fa7499ff99a7bb4adb17f8ea1b9';

@ProviderFor(searchTransactions)
final searchTransactionsProvider = SearchTransactionsProvider._();

final class SearchTransactionsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Transaction>>,
          List<Transaction>,
          FutureOr<List<Transaction>>
        >
    with
        $FutureModifier<List<Transaction>>,
        $FutureProvider<List<Transaction>> {
  SearchTransactionsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'searchTransactionsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$searchTransactionsHash();

  @$internal
  @override
  $FutureProviderElement<List<Transaction>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Transaction>> create(Ref ref) {
    return searchTransactions(ref);
  }
}

String _$searchTransactionsHash() =>
    r'fb03e7dc3a986aaca4f00b2bc0978518fb44a988';
