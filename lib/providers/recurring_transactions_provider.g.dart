// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recurring_transactions_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SelectedRecurringTransactionUpdate)
final selectedRecurringTransactionUpdateProvider =
    SelectedRecurringTransactionUpdateProvider._();

final class SelectedRecurringTransactionUpdateProvider
    extends
        $NotifierProvider<
          SelectedRecurringTransactionUpdate,
          RecurringTransaction?
        > {
  SelectedRecurringTransactionUpdateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedRecurringTransactionUpdateProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$selectedRecurringTransactionUpdateHash();

  @$internal
  @override
  SelectedRecurringTransactionUpdate create() =>
      SelectedRecurringTransactionUpdate();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RecurringTransaction? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RecurringTransaction?>(value),
    );
  }
}

String _$selectedRecurringTransactionUpdateHash() =>
    r'2887a30af0f4ffd62a8f2cc4b6fd1f1ecf985aad';

abstract class _$SelectedRecurringTransactionUpdate
    extends $Notifier<RecurringTransaction?> {
  RecurringTransaction? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<RecurringTransaction?, RecurringTransaction?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RecurringTransaction?, RecurringTransaction?>,
              RecurringTransaction?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(RecurringTransactionsNotifier)
final recurringTransactionsProvider = RecurringTransactionsNotifierProvider._();

final class RecurringTransactionsNotifierProvider
    extends
        $AsyncNotifierProvider<
          RecurringTransactionsNotifier,
          List<RecurringTransaction>
        > {
  RecurringTransactionsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'recurringTransactionsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$recurringTransactionsNotifierHash();

  @$internal
  @override
  RecurringTransactionsNotifier create() => RecurringTransactionsNotifier();
}

String _$recurringTransactionsNotifierHash() =>
    r'6f7878287ba196b4f8d1eba69e3cbdd5f2f3dc4e';

abstract class _$RecurringTransactionsNotifier
    extends $AsyncNotifier<List<RecurringTransaction>> {
  FutureOr<List<RecurringTransaction>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<RecurringTransaction>>,
              List<RecurringTransaction>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<RecurringTransaction>>,
                List<RecurringTransaction>
              >,
              AsyncValue<List<RecurringTransaction>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(recurringPayments)
final recurringPaymentsProvider = RecurringPaymentsFamily._();

final class RecurringPaymentsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<RecurringPaymentsGrouped>>,
          List<RecurringPaymentsGrouped>,
          FutureOr<List<RecurringPaymentsGrouped>>
        >
    with
        $FutureModifier<List<RecurringPaymentsGrouped>>,
        $FutureProvider<List<RecurringPaymentsGrouped>> {
  RecurringPaymentsProvider._({
    required RecurringPaymentsFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'recurringPaymentsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$recurringPaymentsHash();

  @override
  String toString() {
    return r'recurringPaymentsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<RecurringPaymentsGrouped>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<RecurringPaymentsGrouped>> create(Ref ref) {
    final argument = this.argument as int;
    return recurringPayments(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is RecurringPaymentsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$recurringPaymentsHash() => r'38a8933158392464685e35125b2e1d20db4a8642';

final class RecurringPaymentsFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<RecurringPaymentsGrouped>>,
          int
        > {
  RecurringPaymentsFamily._()
    : super(
        retry: null,
        name: r'recurringPaymentsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RecurringPaymentsProvider call(int id) =>
      RecurringPaymentsProvider._(argument: id, from: this);

  @override
  String toString() => r'recurringPaymentsProvider';
}
