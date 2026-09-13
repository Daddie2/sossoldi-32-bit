// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(version)
final versionProvider = VersionProvider._();

final class VersionProvider extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  VersionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'versionProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$versionHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return version(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$versionHash() => r'4e5dbeb1ed3f06943e2c6a22a467394d468b5ce3';

@ProviderFor(sharedPref)
final sharedPrefProvider = SharedPrefProvider._();

final class SharedPrefProvider
    extends
        $FunctionalProvider<
          SharedPreferences,
          SharedPreferences,
          SharedPreferences
        >
    with $Provider<SharedPreferences> {
  SharedPrefProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sharedPrefProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sharedPrefHash();

  @$internal
  @override
  $ProviderElement<SharedPreferences> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SharedPreferences create(Ref ref) {
    return sharedPref(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SharedPreferences value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SharedPreferences>(value),
    );
  }
}

String _$sharedPrefHash() => r'd848ad46ed46c716fb8f9c43ea364f88a7cd544e';

@ProviderFor(onBoardingCompleted)
final onBoardingCompletedProvider = OnBoardingCompletedProvider._();

final class OnBoardingCompletedProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  OnBoardingCompletedProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'onBoardingCompletedProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$onBoardingCompletedHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return onBoardingCompleted(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$onBoardingCompletedHash() =>
    r'a0a7d442eba15355cab35b1ba28f349b8a190dd9';

@ProviderFor(VisibilityAmount)
final visibilityAmountProvider = VisibilityAmountProvider._();

final class VisibilityAmountProvider
    extends $NotifierProvider<VisibilityAmount, bool> {
  VisibilityAmountProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'visibilityAmountProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$visibilityAmountHash();

  @$internal
  @override
  VisibilityAmount create() => VisibilityAmount();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$visibilityAmountHash() => r'5cb0ec52670d4baa6545ef6ec9f63ba5fbb62ef6';

abstract class _$VisibilityAmount extends $Notifier<bool> {
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

@ProviderFor(TransactionReminderSwitch)
final transactionReminderSwitchProvider = TransactionReminderSwitchProvider._();

final class TransactionReminderSwitchProvider
    extends $NotifierProvider<TransactionReminderSwitch, bool> {
  TransactionReminderSwitchProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transactionReminderSwitchProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$transactionReminderSwitchHash();

  @$internal
  @override
  TransactionReminderSwitch create() => TransactionReminderSwitch();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$transactionReminderSwitchHash() =>
    r'd5281b0436ed666a6bf16e745667aa42b05e9cc9';

abstract class _$TransactionReminderSwitch extends $Notifier<bool> {
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

@ProviderFor(TransactionReminderCadence)
final transactionReminderCadenceProvider =
    TransactionReminderCadenceProvider._();

final class TransactionReminderCadenceProvider
    extends
        $NotifierProvider<
          TransactionReminderCadence,
          NotificationReminderType
        > {
  TransactionReminderCadenceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transactionReminderCadenceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$transactionReminderCadenceHash();

  @$internal
  @override
  TransactionReminderCadence create() => TransactionReminderCadence();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NotificationReminderType value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NotificationReminderType>(value),
    );
  }
}

String _$transactionReminderCadenceHash() =>
    r'ff665f12be4d0feb7515166da2b95d4ccf7e9dfa';

abstract class _$TransactionReminderCadence
    extends $Notifier<NotificationReminderType> {
  NotificationReminderType build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<NotificationReminderType, NotificationReminderType>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<NotificationReminderType, NotificationReminderType>,
              NotificationReminderType,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(TransactionRecReminderSwitch)
final transactionRecReminderSwitchProvider =
    TransactionRecReminderSwitchProvider._();

final class TransactionRecReminderSwitchProvider
    extends $NotifierProvider<TransactionRecReminderSwitch, bool> {
  TransactionRecReminderSwitchProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transactionRecReminderSwitchProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$transactionRecReminderSwitchHash();

  @$internal
  @override
  TransactionRecReminderSwitch create() => TransactionRecReminderSwitch();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$transactionRecReminderSwitchHash() =>
    r'552bd4c874b93cda2961e02da41ac1a0d77c6e23';

abstract class _$TransactionRecReminderSwitch extends $Notifier<bool> {
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

@ProviderFor(TransactionRecAddedSwitch)
final transactionRecAddedSwitchProvider = TransactionRecAddedSwitchProvider._();

final class TransactionRecAddedSwitchProvider
    extends $NotifierProvider<TransactionRecAddedSwitch, bool> {
  TransactionRecAddedSwitchProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transactionRecAddedSwitchProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$transactionRecAddedSwitchHash();

  @$internal
  @override
  TransactionRecAddedSwitch create() => TransactionRecAddedSwitch();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$transactionRecAddedSwitchHash() =>
    r'8e6d4b9d33d78040ca40f410fddd537d7610ca18';

abstract class _$TransactionRecAddedSwitch extends $Notifier<bool> {
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

@ProviderFor(Notifications)
final notificationsProvider = NotificationsProvider._();

final class NotificationsProvider
    extends $AsyncNotifierProvider<Notifications, void> {
  NotificationsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationsHash();

  @$internal
  @override
  Notifications create() => Notifications();
}

String _$notificationsHash() => r'f60f9b43b60827d25ef14258a9567410e23aea84';

abstract class _$Notifications extends $AsyncNotifier<void> {
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
