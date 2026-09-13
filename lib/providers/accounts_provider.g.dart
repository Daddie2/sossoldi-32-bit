// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MainAccount)
final mainAccountProvider = MainAccountProvider._();

final class MainAccountProvider
    extends $NotifierProvider<MainAccount, BankAccount?> {
  MainAccountProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mainAccountProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mainAccountHash();

  @$internal
  @override
  MainAccount create() => MainAccount();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BankAccount? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BankAccount?>(value),
    );
  }
}

String _$mainAccountHash() => r'ace9ff4c72e20d6abee585a2aa9fcec228bb9e3f';

abstract class _$MainAccount extends $Notifier<BankAccount?> {
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

@ProviderFor(SelectedAccount)
final selectedAccountProvider = SelectedAccountProvider._();

final class SelectedAccountProvider
    extends $NotifierProvider<SelectedAccount, BankAccount?> {
  SelectedAccountProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedAccountProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedAccountHash();

  @$internal
  @override
  SelectedAccount create() => SelectedAccount();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BankAccount? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BankAccount?>(value),
    );
  }
}

String _$selectedAccountHash() => r'ab2a4ba86ee00d178c2c4bc2c53bbdc9d8a77cfd';

abstract class _$SelectedAccount extends $Notifier<BankAccount?> {
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

@ProviderFor(SelectedAccountCurrentYearMonthlyBalance)
final selectedAccountCurrentYearMonthlyBalanceProvider =
    SelectedAccountCurrentYearMonthlyBalanceProvider._();

final class SelectedAccountCurrentYearMonthlyBalanceProvider
    extends
        $NotifierProvider<
          SelectedAccountCurrentYearMonthlyBalance,
          List<FlSpot>
        > {
  SelectedAccountCurrentYearMonthlyBalanceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedAccountCurrentYearMonthlyBalanceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$selectedAccountCurrentYearMonthlyBalanceHash();

  @$internal
  @override
  SelectedAccountCurrentYearMonthlyBalance create() =>
      SelectedAccountCurrentYearMonthlyBalance();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<FlSpot> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<FlSpot>>(value),
    );
  }
}

String _$selectedAccountCurrentYearMonthlyBalanceHash() =>
    r'61e4f2666ac5afbe86f77f6787581969e4e630c0';

abstract class _$SelectedAccountCurrentYearMonthlyBalance
    extends $Notifier<List<FlSpot>> {
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

@ProviderFor(SelectedAccountLastTransactions)
final selectedAccountLastTransactionsProvider =
    SelectedAccountLastTransactionsProvider._();

final class SelectedAccountLastTransactionsProvider
    extends $NotifierProvider<SelectedAccountLastTransactions, List<dynamic>> {
  SelectedAccountLastTransactionsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedAccountLastTransactionsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedAccountLastTransactionsHash();

  @$internal
  @override
  SelectedAccountLastTransactions create() => SelectedAccountLastTransactions();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<dynamic> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<dynamic>>(value),
    );
  }
}

String _$selectedAccountLastTransactionsHash() =>
    r'91c51a6eb90d2190b160e820c1cc4e877f0ac70b';

abstract class _$SelectedAccountLastTransactions
    extends $Notifier<List<dynamic>> {
  List<dynamic> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<dynamic>, List<dynamic>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<dynamic>, List<dynamic>>,
              List<dynamic>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(FilterAccount)
final filterAccountProvider = FilterAccountProvider._();

final class FilterAccountProvider
    extends $NotifierProvider<FilterAccount, Map<int, bool>> {
  FilterAccountProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'filterAccountProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$filterAccountHash();

  @$internal
  @override
  FilterAccount create() => FilterAccount();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<int, bool> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<int, bool>>(value),
    );
  }
}

String _$filterAccountHash() => r'64aea7ac58d6f0d1a0035bd593b6f8b190459448';

abstract class _$FilterAccount extends $Notifier<Map<int, bool>> {
  Map<int, bool> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Map<int, bool>, Map<int, bool>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Map<int, bool>, Map<int, bool>>,
              Map<int, bool>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(Accounts)
final accountsProvider = AccountsProvider._();

final class AccountsProvider
    extends $AsyncNotifierProvider<Accounts, List<BankAccount>> {
  AccountsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'accountsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$accountsHash();

  @$internal
  @override
  Accounts create() => Accounts();
}

String _$accountsHash() => r'cf8d032bbbecb39e497a5f40ae10c4c6d3b54cb2';

abstract class _$Accounts extends $AsyncNotifier<List<BankAccount>> {
  FutureOr<List<BankAccount>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<BankAccount>>, List<BankAccount>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<BankAccount>>, List<BankAccount>>,
              AsyncValue<List<BankAccount>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(activeAccounts)
final activeAccountsProvider = ActiveAccountsProvider._();

final class ActiveAccountsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<BankAccount>>,
          List<BankAccount>,
          FutureOr<List<BankAccount>>
        >
    with
        $FutureModifier<List<BankAccount>>,
        $FutureProvider<List<BankAccount>> {
  ActiveAccountsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'activeAccountsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$activeAccountsHash();

  @$internal
  @override
  $FutureProviderElement<List<BankAccount>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<BankAccount>> create(Ref ref) {
    return activeAccounts(ref);
  }
}

String _$activeAccountsHash() => r'198cd6390b5a25aae64d3e8921af03fd97dc3b9c';

@ProviderFor(frequentAccounts)
final frequentAccountsProvider = FrequentAccountsProvider._();

final class FrequentAccountsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<BankAccount>>,
          List<BankAccount>,
          FutureOr<List<BankAccount>>
        >
    with
        $FutureModifier<List<BankAccount>>,
        $FutureProvider<List<BankAccount>> {
  FrequentAccountsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'frequentAccountsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$frequentAccountsHash();

  @$internal
  @override
  $FutureProviderElement<List<BankAccount>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<BankAccount>> create(Ref ref) {
    return frequentAccounts(ref);
  }
}

String _$frequentAccountsHash() => r'38271355a4df24c9143d914cba8bd10f29b1edde';
