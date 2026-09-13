// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SelectedCategory)
final selectedCategoryProvider = SelectedCategoryProvider._();

final class SelectedCategoryProvider
    extends $NotifierProvider<SelectedCategory, CategoryTransaction?> {
  SelectedCategoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedCategoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedCategoryHash();

  @$internal
  @override
  SelectedCategory create() => SelectedCategory();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CategoryTransaction? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CategoryTransaction?>(value),
    );
  }
}

String _$selectedCategoryHash() => r'5e1af12b3cbf18507240813530124d3d1d282c83';

abstract class _$SelectedCategory extends $Notifier<CategoryTransaction?> {
  CategoryTransaction? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<CategoryTransaction?, CategoryTransaction?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CategoryTransaction?, CategoryTransaction?>,
              CategoryTransaction?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(SelectedSubcategory)
final selectedSubcategoryProvider = SelectedSubcategoryProvider._();

final class SelectedSubcategoryProvider
    extends $NotifierProvider<SelectedSubcategory, CategoryTransaction?> {
  SelectedSubcategoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedSubcategoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedSubcategoryHash();

  @$internal
  @override
  SelectedSubcategory create() => SelectedSubcategory();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CategoryTransaction? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CategoryTransaction?>(value),
    );
  }
}

String _$selectedSubcategoryHash() =>
    r'e8451c4b1841e81ee7457124cd50275518a1fe32';

abstract class _$SelectedSubcategory extends $Notifier<CategoryTransaction?> {
  CategoryTransaction? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<CategoryTransaction?, CategoryTransaction?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CategoryTransaction?, CategoryTransaction?>,
              CategoryTransaction?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(CategoryType)
final categoryTypeProvider = CategoryTypeProvider._();

final class CategoryTypeProvider
    extends $NotifierProvider<CategoryType, CategoryTransactionType> {
  CategoryTypeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categoryTypeProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$categoryTypeHash();

  @$internal
  @override
  CategoryType create() => CategoryType();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CategoryTransactionType value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CategoryTransactionType>(value),
    );
  }
}

String _$categoryTypeHash() => r'b8b177a9d3bfbef6fe08d13f7d9431a444b1aa53';

abstract class _$CategoryType extends $Notifier<CategoryTransactionType> {
  CategoryTransactionType build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<CategoryTransactionType, CategoryTransactionType>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CategoryTransactionType, CategoryTransactionType>,
              CategoryTransactionType,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(Categories)
final categoriesProvider = CategoriesProvider._();

final class CategoriesProvider
    extends $AsyncNotifierProvider<Categories, List<CategoryTransaction>> {
  CategoriesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categoriesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$categoriesHash();

  @$internal
  @override
  Categories create() => Categories();
}

String _$categoriesHash() => r'7b577f561af02f954daf17a39cd506f0fc950876';

abstract class _$Categories extends $AsyncNotifier<List<CategoryTransaction>> {
  FutureOr<List<CategoryTransaction>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<CategoryTransaction>>,
              List<CategoryTransaction>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<CategoryTransaction>>,
                List<CategoryTransaction>
              >,
              AsyncValue<List<CategoryTransaction>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(allParentCategories)
final allParentCategoriesProvider = AllParentCategoriesProvider._();

final class AllParentCategoriesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<CategoryTransaction>>,
          List<CategoryTransaction>,
          FutureOr<List<CategoryTransaction>>
        >
    with
        $FutureModifier<List<CategoryTransaction>>,
        $FutureProvider<List<CategoryTransaction>> {
  AllParentCategoriesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'allParentCategoriesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$allParentCategoriesHash();

  @$internal
  @override
  $FutureProviderElement<List<CategoryTransaction>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<CategoryTransaction>> create(Ref ref) {
    return allParentCategories(ref);
  }
}

String _$allParentCategoriesHash() =>
    r'bababbbdca0c60fcf1284aba288ee4b0d9943f1c';

@ProviderFor(categoriesByType)
final categoriesByTypeProvider = CategoriesByTypeFamily._();

final class CategoriesByTypeProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<CategoryTransaction>>,
          List<CategoryTransaction>,
          FutureOr<List<CategoryTransaction>>
        >
    with
        $FutureModifier<List<CategoryTransaction>>,
        $FutureProvider<List<CategoryTransaction>> {
  CategoriesByTypeProvider._({
    required CategoriesByTypeFamily super.from,
    required (CategoryTransactionType?, {bool includeSubcategories})
    super.argument,
  }) : super(
         retry: null,
         name: r'categoriesByTypeProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$categoriesByTypeHash();

  @override
  String toString() {
    return r'categoriesByTypeProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<List<CategoryTransaction>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<CategoryTransaction>> create(Ref ref) {
    final argument =
        this.argument
            as (CategoryTransactionType?, {bool includeSubcategories});
    return categoriesByType(
      ref,
      argument.$1,
      includeSubcategories: argument.includeSubcategories,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CategoriesByTypeProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$categoriesByTypeHash() => r'7bd4a8eb606f01e18ad7c2a903d550138246de9f';

final class CategoriesByTypeFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<CategoryTransaction>>,
          (CategoryTransactionType?, {bool includeSubcategories})
        > {
  CategoriesByTypeFamily._()
    : super(
        retry: null,
        name: r'categoriesByTypeProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  CategoriesByTypeProvider call(
    CategoryTransactionType? type, {
    bool includeSubcategories = false,
  }) => CategoriesByTypeProvider._(
    argument: (type, includeSubcategories: includeSubcategories),
    from: this,
  );

  @override
  String toString() => r'categoriesByTypeProvider';
}

@ProviderFor(subcategories)
final subcategoriesProvider = SubcategoriesFamily._();

final class SubcategoriesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<CategoryTransaction>>,
          List<CategoryTransaction>,
          FutureOr<List<CategoryTransaction>>
        >
    with
        $FutureModifier<List<CategoryTransaction>>,
        $FutureProvider<List<CategoryTransaction>> {
  SubcategoriesProvider._({
    required SubcategoriesFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'subcategoriesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$subcategoriesHash();

  @override
  String toString() {
    return r'subcategoriesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<CategoryTransaction>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<CategoryTransaction>> create(Ref ref) {
    final argument = this.argument as int;
    return subcategories(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SubcategoriesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$subcategoriesHash() => r'192e39942844afd3aa8244c63256a85bdda40b36';

final class SubcategoriesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<CategoryTransaction>>, int> {
  SubcategoriesFamily._()
    : super(
        retry: null,
        name: r'subcategoriesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SubcategoriesProvider call(int categoryId) =>
      SubcategoriesProvider._(argument: categoryId, from: this);

  @override
  String toString() => r'subcategoriesProvider';
}

@ProviderFor(frequentCategories)
final frequentCategoriesProvider = FrequentCategoriesFamily._();

final class FrequentCategoriesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<CategoryTransaction>>,
          List<CategoryTransaction>,
          FutureOr<List<CategoryTransaction>>
        >
    with
        $FutureModifier<List<CategoryTransaction>>,
        $FutureProvider<List<CategoryTransaction>> {
  FrequentCategoriesProvider._({
    required FrequentCategoriesFamily super.from,
    required CategoryTransactionType? super.argument,
  }) : super(
         retry: null,
         name: r'frequentCategoriesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$frequentCategoriesHash();

  @override
  String toString() {
    return r'frequentCategoriesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<CategoryTransaction>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<CategoryTransaction>> create(Ref ref) {
    final argument = this.argument as CategoryTransactionType?;
    return frequentCategories(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is FrequentCategoriesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$frequentCategoriesHash() =>
    r'a87edb56cc4e4bb97f77432c87c15b2683d7d777';

final class FrequentCategoriesFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<CategoryTransaction>>,
          CategoryTransactionType?
        > {
  FrequentCategoriesFamily._()
    : super(
        retry: null,
        name: r'frequentCategoriesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FrequentCategoriesProvider call(CategoryTransactionType? type) =>
      FrequentCategoriesProvider._(argument: type, from: this);

  @override
  String toString() => r'frequentCategoriesProvider';
}

@ProviderFor(categoryMap)
final categoryMapProvider = CategoryMapProvider._();

final class CategoryMapProvider
    extends
        $FunctionalProvider<
          AsyncValue<Map<CategoryTransaction, double>>,
          Map<CategoryTransaction, double>,
          FutureOr<Map<CategoryTransaction, double>>
        >
    with
        $FutureModifier<Map<CategoryTransaction, double>>,
        $FutureProvider<Map<CategoryTransaction, double>> {
  CategoryMapProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categoryMapProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$categoryMapHash();

  @$internal
  @override
  $FutureProviderElement<Map<CategoryTransaction, double>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<Map<CategoryTransaction, double>> create(Ref ref) {
    return categoryMap(ref);
  }
}

String _$categoryMapHash() => r'f283916d68ee5b4923880f31a4846ee8f5c06c10';

@ProviderFor(categoryTotalAmount)
final categoryTotalAmountProvider = CategoryTotalAmountProvider._();

final class CategoryTotalAmountProvider
    extends $FunctionalProvider<AsyncValue<double>, double, FutureOr<double>>
    with $FutureModifier<double>, $FutureProvider<double> {
  CategoryTotalAmountProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categoryTotalAmountProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$categoryTotalAmountHash();

  @$internal
  @override
  $FutureProviderElement<double> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<double> create(Ref ref) {
    return categoryTotalAmount(ref);
  }
}

String _$categoryTotalAmountHash() =>
    r'fb5d3dfcfcfbd6b764147c2c1da57fcdd83c9917';

@ProviderFor(monthlyTotals)
final monthlyTotalsProvider = MonthlyTotalsProvider._();

final class MonthlyTotalsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<double>>,
          List<double>,
          FutureOr<List<double>>
        >
    with $FutureModifier<List<double>>, $FutureProvider<List<double>> {
  MonthlyTotalsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'monthlyTotalsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$monthlyTotalsHash();

  @$internal
  @override
  $FutureProviderElement<List<double>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<double>> create(Ref ref) {
    return monthlyTotals(ref);
  }
}

String _$monthlyTotalsHash() => r'dd723014dc6d002785f6bfe48e72512ff0af439d';

@ProviderFor(categoryWithSubcategoriesData)
final categoryWithSubcategoriesDataProvider =
    CategoryWithSubcategoriesDataProvider._();

final class CategoryWithSubcategoriesDataProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ParentCategoryWithSubcategoriesData>>,
          List<ParentCategoryWithSubcategoriesData>,
          FutureOr<List<ParentCategoryWithSubcategoriesData>>
        >
    with
        $FutureModifier<List<ParentCategoryWithSubcategoriesData>>,
        $FutureProvider<List<ParentCategoryWithSubcategoriesData>> {
  CategoryWithSubcategoriesDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categoryWithSubcategoriesDataProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$categoryWithSubcategoriesDataHash();

  @$internal
  @override
  $FutureProviderElement<List<ParentCategoryWithSubcategoriesData>>
  $createElement($ProviderPointer pointer) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ParentCategoryWithSubcategoriesData>> create(Ref ref) {
    return categoryWithSubcategoriesData(ref);
  }
}

String _$categoryWithSubcategoriesDataHash() =>
    r'51e765562bf58870c4b1a8955668d9a466b7bc56';
