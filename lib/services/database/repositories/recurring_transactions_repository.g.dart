// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recurring_transactions_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(recurringTransactionRepository)
final recurringTransactionRepositoryProvider =
    RecurringTransactionRepositoryProvider._();

final class RecurringTransactionRepositoryProvider
    extends
        $FunctionalProvider<
          RecurringTransactionRepository,
          RecurringTransactionRepository,
          RecurringTransactionRepository
        >
    with $Provider<RecurringTransactionRepository> {
  RecurringTransactionRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'recurringTransactionRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$recurringTransactionRepositoryHash();

  @$internal
  @override
  $ProviderElement<RecurringTransactionRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RecurringTransactionRepository create(Ref ref) {
    return recurringTransactionRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RecurringTransactionRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RecurringTransactionRepository>(
        value,
      ),
    );
  }
}

String _$recurringTransactionRepositoryHash() =>
    r'8da1c1d96f00285576ff41f398a42100d7ebbbda';
