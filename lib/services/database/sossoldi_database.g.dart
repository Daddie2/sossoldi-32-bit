// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sossoldi_database.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(database)
final databaseProvider = DatabaseProvider._();

final class DatabaseProvider
    extends
        $FunctionalProvider<
          SossoldiDatabase,
          SossoldiDatabase,
          SossoldiDatabase
        >
    with $Provider<SossoldiDatabase> {
  DatabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'databaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$databaseHash();

  @$internal
  @override
  $ProviderElement<SossoldiDatabase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SossoldiDatabase create(Ref ref) {
    return database(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SossoldiDatabase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SossoldiDatabase>(value),
    );
  }
}

String _$databaseHash() => r'1a80993099aaf2f50d978079d95c25c46f127d2f';
