// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AuthenticationState)
final authenticationStateProvider = AuthenticationStateProvider._();

final class AuthenticationStateProvider
    extends $NotifierProvider<AuthenticationState, bool> {
  AuthenticationStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authenticationStateProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authenticationStateHash();

  @$internal
  @override
  AuthenticationState create() => AuthenticationState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$authenticationStateHash() =>
    r'2687d038b5a3ef084069c86dde563be148231110';

abstract class _$AuthenticationState extends $Notifier<bool> {
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
