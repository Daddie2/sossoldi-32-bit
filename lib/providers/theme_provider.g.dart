// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AppThemeState)
final appThemeStateProvider = AppThemeStateProvider._();

final class AppThemeStateProvider
    extends $NotifierProvider<AppThemeState, ThemeState> {
  AppThemeStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appThemeStateProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appThemeStateHash();

  @$internal
  @override
  AppThemeState create() => AppThemeState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeState>(value),
    );
  }
}

String _$appThemeStateHash() => r'c7643250a37770dc878651fce461382ccda156a6';

abstract class _$AppThemeState extends $Notifier<ThemeState> {
  ThemeState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ThemeState, ThemeState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ThemeState, ThemeState>,
              ThemeState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
