// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InventoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InventoryQurreyModel inventoryQurreyModel)
        getAllProductsEvent,
    required TResult Function(SearchQurreyModel searchQurreyModel) searchEvent,
    required TResult Function(
            InventoryDetailsQurreyModel inventoryDetailsQurreyModel)
        productDetailsEvent,
    required TResult Function(
            CategoryProductQurreyModel categoryProductQurreyModel,
            CategoryIdProductModel categoryIdProductModel)
        categoryProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InventoryQurreyModel inventoryQurreyModel)?
        getAllProductsEvent,
    TResult? Function(SearchQurreyModel searchQurreyModel)? searchEvent,
    TResult? Function(InventoryDetailsQurreyModel inventoryDetailsQurreyModel)?
        productDetailsEvent,
    TResult? Function(CategoryProductQurreyModel categoryProductQurreyModel,
            CategoryIdProductModel categoryIdProductModel)?
        categoryProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InventoryQurreyModel inventoryQurreyModel)?
        getAllProductsEvent,
    TResult Function(SearchQurreyModel searchQurreyModel)? searchEvent,
    TResult Function(InventoryDetailsQurreyModel inventoryDetailsQurreyModel)?
        productDetailsEvent,
    TResult Function(CategoryProductQurreyModel categoryProductQurreyModel,
            CategoryIdProductModel categoryIdProductModel)?
        categoryProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllProductsEvent value) getAllProductsEvent,
    required TResult Function(SearchEvent value) searchEvent,
    required TResult Function(ProductDetailsEvent value) productDetailsEvent,
    required TResult Function(CategoryProductEvent value) categoryProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllProductsEvent value)? getAllProductsEvent,
    TResult? Function(SearchEvent value)? searchEvent,
    TResult? Function(ProductDetailsEvent value)? productDetailsEvent,
    TResult? Function(CategoryProductEvent value)? categoryProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllProductsEvent value)? getAllProductsEvent,
    TResult Function(SearchEvent value)? searchEvent,
    TResult Function(ProductDetailsEvent value)? productDetailsEvent,
    TResult Function(CategoryProductEvent value)? categoryProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryEventCopyWith<$Res> {
  factory $InventoryEventCopyWith(
          InventoryEvent value, $Res Function(InventoryEvent) then) =
      _$InventoryEventCopyWithImpl<$Res, InventoryEvent>;
}

/// @nodoc
class _$InventoryEventCopyWithImpl<$Res, $Val extends InventoryEvent>
    implements $InventoryEventCopyWith<$Res> {
  _$InventoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllProductsEventImplCopyWith<$Res> {
  factory _$$GetAllProductsEventImplCopyWith(_$GetAllProductsEventImpl value,
          $Res Function(_$GetAllProductsEventImpl) then) =
      __$$GetAllProductsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InventoryQurreyModel inventoryQurreyModel});
}

/// @nodoc
class __$$GetAllProductsEventImplCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res, _$GetAllProductsEventImpl>
    implements _$$GetAllProductsEventImplCopyWith<$Res> {
  __$$GetAllProductsEventImplCopyWithImpl(_$GetAllProductsEventImpl _value,
      $Res Function(_$GetAllProductsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inventoryQurreyModel = null,
  }) {
    return _then(_$GetAllProductsEventImpl(
      inventoryQurreyModel: null == inventoryQurreyModel
          ? _value.inventoryQurreyModel
          : inventoryQurreyModel // ignore: cast_nullable_to_non_nullable
              as InventoryQurreyModel,
    ));
  }
}

/// @nodoc

class _$GetAllProductsEventImpl implements GetAllProductsEvent {
  const _$GetAllProductsEventImpl({required this.inventoryQurreyModel});

  @override
  final InventoryQurreyModel inventoryQurreyModel;

  @override
  String toString() {
    return 'InventoryEvent.getAllProductsEvent(inventoryQurreyModel: $inventoryQurreyModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllProductsEventImpl &&
            (identical(other.inventoryQurreyModel, inventoryQurreyModel) ||
                other.inventoryQurreyModel == inventoryQurreyModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inventoryQurreyModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllProductsEventImplCopyWith<_$GetAllProductsEventImpl> get copyWith =>
      __$$GetAllProductsEventImplCopyWithImpl<_$GetAllProductsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InventoryQurreyModel inventoryQurreyModel)
        getAllProductsEvent,
    required TResult Function(SearchQurreyModel searchQurreyModel) searchEvent,
    required TResult Function(
            InventoryDetailsQurreyModel inventoryDetailsQurreyModel)
        productDetailsEvent,
    required TResult Function(
            CategoryProductQurreyModel categoryProductQurreyModel,
            CategoryIdProductModel categoryIdProductModel)
        categoryProduct,
  }) {
    return getAllProductsEvent(inventoryQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InventoryQurreyModel inventoryQurreyModel)?
        getAllProductsEvent,
    TResult? Function(SearchQurreyModel searchQurreyModel)? searchEvent,
    TResult? Function(InventoryDetailsQurreyModel inventoryDetailsQurreyModel)?
        productDetailsEvent,
    TResult? Function(CategoryProductQurreyModel categoryProductQurreyModel,
            CategoryIdProductModel categoryIdProductModel)?
        categoryProduct,
  }) {
    return getAllProductsEvent?.call(inventoryQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InventoryQurreyModel inventoryQurreyModel)?
        getAllProductsEvent,
    TResult Function(SearchQurreyModel searchQurreyModel)? searchEvent,
    TResult Function(InventoryDetailsQurreyModel inventoryDetailsQurreyModel)?
        productDetailsEvent,
    TResult Function(CategoryProductQurreyModel categoryProductQurreyModel,
            CategoryIdProductModel categoryIdProductModel)?
        categoryProduct,
    required TResult orElse(),
  }) {
    if (getAllProductsEvent != null) {
      return getAllProductsEvent(inventoryQurreyModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllProductsEvent value) getAllProductsEvent,
    required TResult Function(SearchEvent value) searchEvent,
    required TResult Function(ProductDetailsEvent value) productDetailsEvent,
    required TResult Function(CategoryProductEvent value) categoryProduct,
  }) {
    return getAllProductsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllProductsEvent value)? getAllProductsEvent,
    TResult? Function(SearchEvent value)? searchEvent,
    TResult? Function(ProductDetailsEvent value)? productDetailsEvent,
    TResult? Function(CategoryProductEvent value)? categoryProduct,
  }) {
    return getAllProductsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllProductsEvent value)? getAllProductsEvent,
    TResult Function(SearchEvent value)? searchEvent,
    TResult Function(ProductDetailsEvent value)? productDetailsEvent,
    TResult Function(CategoryProductEvent value)? categoryProduct,
    required TResult orElse(),
  }) {
    if (getAllProductsEvent != null) {
      return getAllProductsEvent(this);
    }
    return orElse();
  }
}

abstract class GetAllProductsEvent implements InventoryEvent {
  const factory GetAllProductsEvent(
          {required final InventoryQurreyModel inventoryQurreyModel}) =
      _$GetAllProductsEventImpl;

  InventoryQurreyModel get inventoryQurreyModel;
  @JsonKey(ignore: true)
  _$$GetAllProductsEventImplCopyWith<_$GetAllProductsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchEventImplCopyWith<$Res> {
  factory _$$SearchEventImplCopyWith(
          _$SearchEventImpl value, $Res Function(_$SearchEventImpl) then) =
      __$$SearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchQurreyModel searchQurreyModel});
}

/// @nodoc
class __$$SearchEventImplCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res, _$SearchEventImpl>
    implements _$$SearchEventImplCopyWith<$Res> {
  __$$SearchEventImplCopyWithImpl(
      _$SearchEventImpl _value, $Res Function(_$SearchEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQurreyModel = null,
  }) {
    return _then(_$SearchEventImpl(
      searchQurreyModel: null == searchQurreyModel
          ? _value.searchQurreyModel
          : searchQurreyModel // ignore: cast_nullable_to_non_nullable
              as SearchQurreyModel,
    ));
  }
}

/// @nodoc

class _$SearchEventImpl implements SearchEvent {
  const _$SearchEventImpl({required this.searchQurreyModel});

  @override
  final SearchQurreyModel searchQurreyModel;

  @override
  String toString() {
    return 'InventoryEvent.searchEvent(searchQurreyModel: $searchQurreyModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchEventImpl &&
            (identical(other.searchQurreyModel, searchQurreyModel) ||
                other.searchQurreyModel == searchQurreyModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQurreyModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchEventImplCopyWith<_$SearchEventImpl> get copyWith =>
      __$$SearchEventImplCopyWithImpl<_$SearchEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InventoryQurreyModel inventoryQurreyModel)
        getAllProductsEvent,
    required TResult Function(SearchQurreyModel searchQurreyModel) searchEvent,
    required TResult Function(
            InventoryDetailsQurreyModel inventoryDetailsQurreyModel)
        productDetailsEvent,
    required TResult Function(
            CategoryProductQurreyModel categoryProductQurreyModel,
            CategoryIdProductModel categoryIdProductModel)
        categoryProduct,
  }) {
    return searchEvent(searchQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InventoryQurreyModel inventoryQurreyModel)?
        getAllProductsEvent,
    TResult? Function(SearchQurreyModel searchQurreyModel)? searchEvent,
    TResult? Function(InventoryDetailsQurreyModel inventoryDetailsQurreyModel)?
        productDetailsEvent,
    TResult? Function(CategoryProductQurreyModel categoryProductQurreyModel,
            CategoryIdProductModel categoryIdProductModel)?
        categoryProduct,
  }) {
    return searchEvent?.call(searchQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InventoryQurreyModel inventoryQurreyModel)?
        getAllProductsEvent,
    TResult Function(SearchQurreyModel searchQurreyModel)? searchEvent,
    TResult Function(InventoryDetailsQurreyModel inventoryDetailsQurreyModel)?
        productDetailsEvent,
    TResult Function(CategoryProductQurreyModel categoryProductQurreyModel,
            CategoryIdProductModel categoryIdProductModel)?
        categoryProduct,
    required TResult orElse(),
  }) {
    if (searchEvent != null) {
      return searchEvent(searchQurreyModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllProductsEvent value) getAllProductsEvent,
    required TResult Function(SearchEvent value) searchEvent,
    required TResult Function(ProductDetailsEvent value) productDetailsEvent,
    required TResult Function(CategoryProductEvent value) categoryProduct,
  }) {
    return searchEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllProductsEvent value)? getAllProductsEvent,
    TResult? Function(SearchEvent value)? searchEvent,
    TResult? Function(ProductDetailsEvent value)? productDetailsEvent,
    TResult? Function(CategoryProductEvent value)? categoryProduct,
  }) {
    return searchEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllProductsEvent value)? getAllProductsEvent,
    TResult Function(SearchEvent value)? searchEvent,
    TResult Function(ProductDetailsEvent value)? productDetailsEvent,
    TResult Function(CategoryProductEvent value)? categoryProduct,
    required TResult orElse(),
  }) {
    if (searchEvent != null) {
      return searchEvent(this);
    }
    return orElse();
  }
}

abstract class SearchEvent implements InventoryEvent {
  const factory SearchEvent(
      {required final SearchQurreyModel searchQurreyModel}) = _$SearchEventImpl;

  SearchQurreyModel get searchQurreyModel;
  @JsonKey(ignore: true)
  _$$SearchEventImplCopyWith<_$SearchEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductDetailsEventImplCopyWith<$Res> {
  factory _$$ProductDetailsEventImplCopyWith(_$ProductDetailsEventImpl value,
          $Res Function(_$ProductDetailsEventImpl) then) =
      __$$ProductDetailsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InventoryDetailsQurreyModel inventoryDetailsQurreyModel});
}

/// @nodoc
class __$$ProductDetailsEventImplCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res, _$ProductDetailsEventImpl>
    implements _$$ProductDetailsEventImplCopyWith<$Res> {
  __$$ProductDetailsEventImplCopyWithImpl(_$ProductDetailsEventImpl _value,
      $Res Function(_$ProductDetailsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inventoryDetailsQurreyModel = null,
  }) {
    return _then(_$ProductDetailsEventImpl(
      inventoryDetailsQurreyModel: null == inventoryDetailsQurreyModel
          ? _value.inventoryDetailsQurreyModel
          : inventoryDetailsQurreyModel // ignore: cast_nullable_to_non_nullable
              as InventoryDetailsQurreyModel,
    ));
  }
}

/// @nodoc

class _$ProductDetailsEventImpl implements ProductDetailsEvent {
  const _$ProductDetailsEventImpl({required this.inventoryDetailsQurreyModel});

  @override
  final InventoryDetailsQurreyModel inventoryDetailsQurreyModel;

  @override
  String toString() {
    return 'InventoryEvent.productDetailsEvent(inventoryDetailsQurreyModel: $inventoryDetailsQurreyModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsEventImpl &&
            (identical(other.inventoryDetailsQurreyModel,
                    inventoryDetailsQurreyModel) ||
                other.inventoryDetailsQurreyModel ==
                    inventoryDetailsQurreyModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inventoryDetailsQurreyModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailsEventImplCopyWith<_$ProductDetailsEventImpl> get copyWith =>
      __$$ProductDetailsEventImplCopyWithImpl<_$ProductDetailsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InventoryQurreyModel inventoryQurreyModel)
        getAllProductsEvent,
    required TResult Function(SearchQurreyModel searchQurreyModel) searchEvent,
    required TResult Function(
            InventoryDetailsQurreyModel inventoryDetailsQurreyModel)
        productDetailsEvent,
    required TResult Function(
            CategoryProductQurreyModel categoryProductQurreyModel,
            CategoryIdProductModel categoryIdProductModel)
        categoryProduct,
  }) {
    return productDetailsEvent(inventoryDetailsQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InventoryQurreyModel inventoryQurreyModel)?
        getAllProductsEvent,
    TResult? Function(SearchQurreyModel searchQurreyModel)? searchEvent,
    TResult? Function(InventoryDetailsQurreyModel inventoryDetailsQurreyModel)?
        productDetailsEvent,
    TResult? Function(CategoryProductQurreyModel categoryProductQurreyModel,
            CategoryIdProductModel categoryIdProductModel)?
        categoryProduct,
  }) {
    return productDetailsEvent?.call(inventoryDetailsQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InventoryQurreyModel inventoryQurreyModel)?
        getAllProductsEvent,
    TResult Function(SearchQurreyModel searchQurreyModel)? searchEvent,
    TResult Function(InventoryDetailsQurreyModel inventoryDetailsQurreyModel)?
        productDetailsEvent,
    TResult Function(CategoryProductQurreyModel categoryProductQurreyModel,
            CategoryIdProductModel categoryIdProductModel)?
        categoryProduct,
    required TResult orElse(),
  }) {
    if (productDetailsEvent != null) {
      return productDetailsEvent(inventoryDetailsQurreyModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllProductsEvent value) getAllProductsEvent,
    required TResult Function(SearchEvent value) searchEvent,
    required TResult Function(ProductDetailsEvent value) productDetailsEvent,
    required TResult Function(CategoryProductEvent value) categoryProduct,
  }) {
    return productDetailsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllProductsEvent value)? getAllProductsEvent,
    TResult? Function(SearchEvent value)? searchEvent,
    TResult? Function(ProductDetailsEvent value)? productDetailsEvent,
    TResult? Function(CategoryProductEvent value)? categoryProduct,
  }) {
    return productDetailsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllProductsEvent value)? getAllProductsEvent,
    TResult Function(SearchEvent value)? searchEvent,
    TResult Function(ProductDetailsEvent value)? productDetailsEvent,
    TResult Function(CategoryProductEvent value)? categoryProduct,
    required TResult orElse(),
  }) {
    if (productDetailsEvent != null) {
      return productDetailsEvent(this);
    }
    return orElse();
  }
}

abstract class ProductDetailsEvent implements InventoryEvent {
  const factory ProductDetailsEvent(
      {required final InventoryDetailsQurreyModel
          inventoryDetailsQurreyModel}) = _$ProductDetailsEventImpl;

  InventoryDetailsQurreyModel get inventoryDetailsQurreyModel;
  @JsonKey(ignore: true)
  _$$ProductDetailsEventImplCopyWith<_$ProductDetailsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryProductEventImplCopyWith<$Res> {
  factory _$$CategoryProductEventImplCopyWith(_$CategoryProductEventImpl value,
          $Res Function(_$CategoryProductEventImpl) then) =
      __$$CategoryProductEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CategoryProductQurreyModel categoryProductQurreyModel,
      CategoryIdProductModel categoryIdProductModel});
}

/// @nodoc
class __$$CategoryProductEventImplCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res, _$CategoryProductEventImpl>
    implements _$$CategoryProductEventImplCopyWith<$Res> {
  __$$CategoryProductEventImplCopyWithImpl(_$CategoryProductEventImpl _value,
      $Res Function(_$CategoryProductEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryProductQurreyModel = null,
    Object? categoryIdProductModel = null,
  }) {
    return _then(_$CategoryProductEventImpl(
      categoryProductQurreyModel: null == categoryProductQurreyModel
          ? _value.categoryProductQurreyModel
          : categoryProductQurreyModel // ignore: cast_nullable_to_non_nullable
              as CategoryProductQurreyModel,
      categoryIdProductModel: null == categoryIdProductModel
          ? _value.categoryIdProductModel
          : categoryIdProductModel // ignore: cast_nullable_to_non_nullable
              as CategoryIdProductModel,
    ));
  }
}

/// @nodoc

class _$CategoryProductEventImpl implements CategoryProductEvent {
  const _$CategoryProductEventImpl(
      {required this.categoryProductQurreyModel,
      required this.categoryIdProductModel});

  @override
  final CategoryProductQurreyModel categoryProductQurreyModel;
  @override
  final CategoryIdProductModel categoryIdProductModel;

  @override
  String toString() {
    return 'InventoryEvent.categoryProduct(categoryProductQurreyModel: $categoryProductQurreyModel, categoryIdProductModel: $categoryIdProductModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryProductEventImpl &&
            (identical(other.categoryProductQurreyModel,
                    categoryProductQurreyModel) ||
                other.categoryProductQurreyModel ==
                    categoryProductQurreyModel) &&
            (identical(other.categoryIdProductModel, categoryIdProductModel) ||
                other.categoryIdProductModel == categoryIdProductModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, categoryProductQurreyModel, categoryIdProductModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryProductEventImplCopyWith<_$CategoryProductEventImpl>
      get copyWith =>
          __$$CategoryProductEventImplCopyWithImpl<_$CategoryProductEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InventoryQurreyModel inventoryQurreyModel)
        getAllProductsEvent,
    required TResult Function(SearchQurreyModel searchQurreyModel) searchEvent,
    required TResult Function(
            InventoryDetailsQurreyModel inventoryDetailsQurreyModel)
        productDetailsEvent,
    required TResult Function(
            CategoryProductQurreyModel categoryProductQurreyModel,
            CategoryIdProductModel categoryIdProductModel)
        categoryProduct,
  }) {
    return categoryProduct(categoryProductQurreyModel, categoryIdProductModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InventoryQurreyModel inventoryQurreyModel)?
        getAllProductsEvent,
    TResult? Function(SearchQurreyModel searchQurreyModel)? searchEvent,
    TResult? Function(InventoryDetailsQurreyModel inventoryDetailsQurreyModel)?
        productDetailsEvent,
    TResult? Function(CategoryProductQurreyModel categoryProductQurreyModel,
            CategoryIdProductModel categoryIdProductModel)?
        categoryProduct,
  }) {
    return categoryProduct?.call(
        categoryProductQurreyModel, categoryIdProductModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InventoryQurreyModel inventoryQurreyModel)?
        getAllProductsEvent,
    TResult Function(SearchQurreyModel searchQurreyModel)? searchEvent,
    TResult Function(InventoryDetailsQurreyModel inventoryDetailsQurreyModel)?
        productDetailsEvent,
    TResult Function(CategoryProductQurreyModel categoryProductQurreyModel,
            CategoryIdProductModel categoryIdProductModel)?
        categoryProduct,
    required TResult orElse(),
  }) {
    if (categoryProduct != null) {
      return categoryProduct(
          categoryProductQurreyModel, categoryIdProductModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllProductsEvent value) getAllProductsEvent,
    required TResult Function(SearchEvent value) searchEvent,
    required TResult Function(ProductDetailsEvent value) productDetailsEvent,
    required TResult Function(CategoryProductEvent value) categoryProduct,
  }) {
    return categoryProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllProductsEvent value)? getAllProductsEvent,
    TResult? Function(SearchEvent value)? searchEvent,
    TResult? Function(ProductDetailsEvent value)? productDetailsEvent,
    TResult? Function(CategoryProductEvent value)? categoryProduct,
  }) {
    return categoryProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllProductsEvent value)? getAllProductsEvent,
    TResult Function(SearchEvent value)? searchEvent,
    TResult Function(ProductDetailsEvent value)? productDetailsEvent,
    TResult Function(CategoryProductEvent value)? categoryProduct,
    required TResult orElse(),
  }) {
    if (categoryProduct != null) {
      return categoryProduct(this);
    }
    return orElse();
  }
}

abstract class CategoryProductEvent implements InventoryEvent {
  const factory CategoryProductEvent(
          {required final CategoryProductQurreyModel categoryProductQurreyModel,
          required final CategoryIdProductModel categoryIdProductModel}) =
      _$CategoryProductEventImpl;

  CategoryProductQurreyModel get categoryProductQurreyModel;
  CategoryIdProductModel get categoryIdProductModel;
  @JsonKey(ignore: true)
  _$$CategoryProductEventImplCopyWith<_$CategoryProductEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InventoryState {
  bool get hasError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  InventoryRespModel? get inventoryRespModel =>
      throw _privateConstructorUsedError;
  SearchRespModel? get searchRespModel => throw _privateConstructorUsedError;
  List<InventoryModel>? get inventories => throw _privateConstructorUsedError;
  InventoryDetailsRespModel? get inventoryDetailsRespModel =>
      throw _privateConstructorUsedError;
  CategoryProductRespModel? get categoryProductRespModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InventoryStateCopyWith<InventoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryStateCopyWith<$Res> {
  factory $InventoryStateCopyWith(
          InventoryState value, $Res Function(InventoryState) then) =
      _$InventoryStateCopyWithImpl<$Res, InventoryState>;
  @useResult
  $Res call(
      {bool hasError,
      bool isLoading,
      String? message,
      InventoryRespModel? inventoryRespModel,
      SearchRespModel? searchRespModel,
      List<InventoryModel>? inventories,
      InventoryDetailsRespModel? inventoryDetailsRespModel,
      CategoryProductRespModel? categoryProductRespModel});
}

/// @nodoc
class _$InventoryStateCopyWithImpl<$Res, $Val extends InventoryState>
    implements $InventoryStateCopyWith<$Res> {
  _$InventoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasError = null,
    Object? isLoading = null,
    Object? message = freezed,
    Object? inventoryRespModel = freezed,
    Object? searchRespModel = freezed,
    Object? inventories = freezed,
    Object? inventoryDetailsRespModel = freezed,
    Object? categoryProductRespModel = freezed,
  }) {
    return _then(_value.copyWith(
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryRespModel: freezed == inventoryRespModel
          ? _value.inventoryRespModel
          : inventoryRespModel // ignore: cast_nullable_to_non_nullable
              as InventoryRespModel?,
      searchRespModel: freezed == searchRespModel
          ? _value.searchRespModel
          : searchRespModel // ignore: cast_nullable_to_non_nullable
              as SearchRespModel?,
      inventories: freezed == inventories
          ? _value.inventories
          : inventories // ignore: cast_nullable_to_non_nullable
              as List<InventoryModel>?,
      inventoryDetailsRespModel: freezed == inventoryDetailsRespModel
          ? _value.inventoryDetailsRespModel
          : inventoryDetailsRespModel // ignore: cast_nullable_to_non_nullable
              as InventoryDetailsRespModel?,
      categoryProductRespModel: freezed == categoryProductRespModel
          ? _value.categoryProductRespModel
          : categoryProductRespModel // ignore: cast_nullable_to_non_nullable
              as CategoryProductRespModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $InventoryStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool hasError,
      bool isLoading,
      String? message,
      InventoryRespModel? inventoryRespModel,
      SearchRespModel? searchRespModel,
      List<InventoryModel>? inventories,
      InventoryDetailsRespModel? inventoryDetailsRespModel,
      CategoryProductRespModel? categoryProductRespModel});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$InventoryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasError = null,
    Object? isLoading = null,
    Object? message = freezed,
    Object? inventoryRespModel = freezed,
    Object? searchRespModel = freezed,
    Object? inventories = freezed,
    Object? inventoryDetailsRespModel = freezed,
    Object? categoryProductRespModel = freezed,
  }) {
    return _then(_$InitialImpl(
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryRespModel: freezed == inventoryRespModel
          ? _value.inventoryRespModel
          : inventoryRespModel // ignore: cast_nullable_to_non_nullable
              as InventoryRespModel?,
      searchRespModel: freezed == searchRespModel
          ? _value.searchRespModel
          : searchRespModel // ignore: cast_nullable_to_non_nullable
              as SearchRespModel?,
      inventories: freezed == inventories
          ? _value._inventories
          : inventories // ignore: cast_nullable_to_non_nullable
              as List<InventoryModel>?,
      inventoryDetailsRespModel: freezed == inventoryDetailsRespModel
          ? _value.inventoryDetailsRespModel
          : inventoryDetailsRespModel // ignore: cast_nullable_to_non_nullable
              as InventoryDetailsRespModel?,
      categoryProductRespModel: freezed == categoryProductRespModel
          ? _value.categoryProductRespModel
          : categoryProductRespModel // ignore: cast_nullable_to_non_nullable
              as CategoryProductRespModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.hasError,
      required this.isLoading,
      this.message,
      this.inventoryRespModel,
      this.searchRespModel,
      final List<InventoryModel>? inventories,
      this.inventoryDetailsRespModel,
      this.categoryProductRespModel})
      : _inventories = inventories;

  @override
  final bool hasError;
  @override
  final bool isLoading;
  @override
  final String? message;
  @override
  final InventoryRespModel? inventoryRespModel;
  @override
  final SearchRespModel? searchRespModel;
  final List<InventoryModel>? _inventories;
  @override
  List<InventoryModel>? get inventories {
    final value = _inventories;
    if (value == null) return null;
    if (_inventories is EqualUnmodifiableListView) return _inventories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final InventoryDetailsRespModel? inventoryDetailsRespModel;
  @override
  final CategoryProductRespModel? categoryProductRespModel;

  @override
  String toString() {
    return 'InventoryState(hasError: $hasError, isLoading: $isLoading, message: $message, inventoryRespModel: $inventoryRespModel, searchRespModel: $searchRespModel, inventories: $inventories, inventoryDetailsRespModel: $inventoryDetailsRespModel, categoryProductRespModel: $categoryProductRespModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.inventoryRespModel, inventoryRespModel) ||
                other.inventoryRespModel == inventoryRespModel) &&
            (identical(other.searchRespModel, searchRespModel) ||
                other.searchRespModel == searchRespModel) &&
            const DeepCollectionEquality()
                .equals(other._inventories, _inventories) &&
            (identical(other.inventoryDetailsRespModel,
                    inventoryDetailsRespModel) ||
                other.inventoryDetailsRespModel == inventoryDetailsRespModel) &&
            (identical(
                    other.categoryProductRespModel, categoryProductRespModel) ||
                other.categoryProductRespModel == categoryProductRespModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      hasError,
      isLoading,
      message,
      inventoryRespModel,
      searchRespModel,
      const DeepCollectionEquality().hash(_inventories),
      inventoryDetailsRespModel,
      categoryProductRespModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements InventoryState {
  const factory _Initial(
          {required final bool hasError,
          required final bool isLoading,
          final String? message,
          final InventoryRespModel? inventoryRespModel,
          final SearchRespModel? searchRespModel,
          final List<InventoryModel>? inventories,
          final InventoryDetailsRespModel? inventoryDetailsRespModel,
          final CategoryProductRespModel? categoryProductRespModel}) =
      _$InitialImpl;

  @override
  bool get hasError;
  @override
  bool get isLoading;
  @override
  String? get message;
  @override
  InventoryRespModel? get inventoryRespModel;
  @override
  SearchRespModel? get searchRespModel;
  @override
  List<InventoryModel>? get inventories;
  @override
  InventoryDetailsRespModel? get inventoryDetailsRespModel;
  @override
  CategoryProductRespModel? get categoryProductRespModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
