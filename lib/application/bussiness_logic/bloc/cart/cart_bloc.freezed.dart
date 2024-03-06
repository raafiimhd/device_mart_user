// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetCartQurreyModel getCartQurreyModel)
        getCartEvent,
    required TResult Function(int id) addCartEvent,
    required TResult Function(int id) removeCartEvent,
    required TResult Function(int id) cartIncrementEvent,
    required TResult Function(int id) cartDecrementEvent,
    required TResult Function() getCouponEvent,
    required TResult Function(GetCouponModel getCouponModel) applyCouponEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetCartQurreyModel getCartQurreyModel)? getCartEvent,
    TResult? Function(int id)? addCartEvent,
    TResult? Function(int id)? removeCartEvent,
    TResult? Function(int id)? cartIncrementEvent,
    TResult? Function(int id)? cartDecrementEvent,
    TResult? Function()? getCouponEvent,
    TResult? Function(GetCouponModel getCouponModel)? applyCouponEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetCartQurreyModel getCartQurreyModel)? getCartEvent,
    TResult Function(int id)? addCartEvent,
    TResult Function(int id)? removeCartEvent,
    TResult Function(int id)? cartIncrementEvent,
    TResult Function(int id)? cartDecrementEvent,
    TResult Function()? getCouponEvent,
    TResult Function(GetCouponModel getCouponModel)? applyCouponEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCartEvent value) getCartEvent,
    required TResult Function(AddCartEvent value) addCartEvent,
    required TResult Function(RemoveCartEvent value) removeCartEvent,
    required TResult Function(CartIncrementQuntityEvent value)
        cartIncrementEvent,
    required TResult Function(CartDecrementQuntityEvent value)
        cartDecrementEvent,
    required TResult Function(GetCouponEvent value) getCouponEvent,
    required TResult Function(ApplyCouponEvent value) applyCouponEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCartEvent value)? getCartEvent,
    TResult? Function(AddCartEvent value)? addCartEvent,
    TResult? Function(RemoveCartEvent value)? removeCartEvent,
    TResult? Function(CartIncrementQuntityEvent value)? cartIncrementEvent,
    TResult? Function(CartDecrementQuntityEvent value)? cartDecrementEvent,
    TResult? Function(GetCouponEvent value)? getCouponEvent,
    TResult? Function(ApplyCouponEvent value)? applyCouponEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCartEvent value)? getCartEvent,
    TResult Function(AddCartEvent value)? addCartEvent,
    TResult Function(RemoveCartEvent value)? removeCartEvent,
    TResult Function(CartIncrementQuntityEvent value)? cartIncrementEvent,
    TResult Function(CartDecrementQuntityEvent value)? cartDecrementEvent,
    TResult Function(GetCouponEvent value)? getCouponEvent,
    TResult Function(ApplyCouponEvent value)? applyCouponEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCartEventImplCopyWith<$Res> {
  factory _$$GetCartEventImplCopyWith(
          _$GetCartEventImpl value, $Res Function(_$GetCartEventImpl) then) =
      __$$GetCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetCartQurreyModel getCartQurreyModel});
}

/// @nodoc
class __$$GetCartEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetCartEventImpl>
    implements _$$GetCartEventImplCopyWith<$Res> {
  __$$GetCartEventImplCopyWithImpl(
      _$GetCartEventImpl _value, $Res Function(_$GetCartEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCartQurreyModel = null,
  }) {
    return _then(_$GetCartEventImpl(
      getCartQurreyModel: null == getCartQurreyModel
          ? _value.getCartQurreyModel
          : getCartQurreyModel // ignore: cast_nullable_to_non_nullable
              as GetCartQurreyModel,
    ));
  }
}

/// @nodoc

class _$GetCartEventImpl implements GetCartEvent {
  const _$GetCartEventImpl({required this.getCartQurreyModel});

  @override
  final GetCartQurreyModel getCartQurreyModel;

  @override
  String toString() {
    return 'CartEvent.getCartEvent(getCartQurreyModel: $getCartQurreyModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCartEventImpl &&
            (identical(other.getCartQurreyModel, getCartQurreyModel) ||
                other.getCartQurreyModel == getCartQurreyModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getCartQurreyModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCartEventImplCopyWith<_$GetCartEventImpl> get copyWith =>
      __$$GetCartEventImplCopyWithImpl<_$GetCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetCartQurreyModel getCartQurreyModel)
        getCartEvent,
    required TResult Function(int id) addCartEvent,
    required TResult Function(int id) removeCartEvent,
    required TResult Function(int id) cartIncrementEvent,
    required TResult Function(int id) cartDecrementEvent,
    required TResult Function() getCouponEvent,
    required TResult Function(GetCouponModel getCouponModel) applyCouponEvent,
  }) {
    return getCartEvent(getCartQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetCartQurreyModel getCartQurreyModel)? getCartEvent,
    TResult? Function(int id)? addCartEvent,
    TResult? Function(int id)? removeCartEvent,
    TResult? Function(int id)? cartIncrementEvent,
    TResult? Function(int id)? cartDecrementEvent,
    TResult? Function()? getCouponEvent,
    TResult? Function(GetCouponModel getCouponModel)? applyCouponEvent,
  }) {
    return getCartEvent?.call(getCartQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetCartQurreyModel getCartQurreyModel)? getCartEvent,
    TResult Function(int id)? addCartEvent,
    TResult Function(int id)? removeCartEvent,
    TResult Function(int id)? cartIncrementEvent,
    TResult Function(int id)? cartDecrementEvent,
    TResult Function()? getCouponEvent,
    TResult Function(GetCouponModel getCouponModel)? applyCouponEvent,
    required TResult orElse(),
  }) {
    if (getCartEvent != null) {
      return getCartEvent(getCartQurreyModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCartEvent value) getCartEvent,
    required TResult Function(AddCartEvent value) addCartEvent,
    required TResult Function(RemoveCartEvent value) removeCartEvent,
    required TResult Function(CartIncrementQuntityEvent value)
        cartIncrementEvent,
    required TResult Function(CartDecrementQuntityEvent value)
        cartDecrementEvent,
    required TResult Function(GetCouponEvent value) getCouponEvent,
    required TResult Function(ApplyCouponEvent value) applyCouponEvent,
  }) {
    return getCartEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCartEvent value)? getCartEvent,
    TResult? Function(AddCartEvent value)? addCartEvent,
    TResult? Function(RemoveCartEvent value)? removeCartEvent,
    TResult? Function(CartIncrementQuntityEvent value)? cartIncrementEvent,
    TResult? Function(CartDecrementQuntityEvent value)? cartDecrementEvent,
    TResult? Function(GetCouponEvent value)? getCouponEvent,
    TResult? Function(ApplyCouponEvent value)? applyCouponEvent,
  }) {
    return getCartEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCartEvent value)? getCartEvent,
    TResult Function(AddCartEvent value)? addCartEvent,
    TResult Function(RemoveCartEvent value)? removeCartEvent,
    TResult Function(CartIncrementQuntityEvent value)? cartIncrementEvent,
    TResult Function(CartDecrementQuntityEvent value)? cartDecrementEvent,
    TResult Function(GetCouponEvent value)? getCouponEvent,
    TResult Function(ApplyCouponEvent value)? applyCouponEvent,
    required TResult orElse(),
  }) {
    if (getCartEvent != null) {
      return getCartEvent(this);
    }
    return orElse();
  }
}

abstract class GetCartEvent implements CartEvent {
  const factory GetCartEvent(
          {required final GetCartQurreyModel getCartQurreyModel}) =
      _$GetCartEventImpl;

  GetCartQurreyModel get getCartQurreyModel;
  @JsonKey(ignore: true)
  _$$GetCartEventImplCopyWith<_$GetCartEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCartEventImplCopyWith<$Res> {
  factory _$$AddCartEventImplCopyWith(
          _$AddCartEventImpl value, $Res Function(_$AddCartEventImpl) then) =
      __$$AddCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$AddCartEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddCartEventImpl>
    implements _$$AddCartEventImplCopyWith<$Res> {
  __$$AddCartEventImplCopyWithImpl(
      _$AddCartEventImpl _value, $Res Function(_$AddCartEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$AddCartEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddCartEventImpl implements AddCartEvent {
  const _$AddCartEventImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CartEvent.addCartEvent(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCartEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCartEventImplCopyWith<_$AddCartEventImpl> get copyWith =>
      __$$AddCartEventImplCopyWithImpl<_$AddCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetCartQurreyModel getCartQurreyModel)
        getCartEvent,
    required TResult Function(int id) addCartEvent,
    required TResult Function(int id) removeCartEvent,
    required TResult Function(int id) cartIncrementEvent,
    required TResult Function(int id) cartDecrementEvent,
    required TResult Function() getCouponEvent,
    required TResult Function(GetCouponModel getCouponModel) applyCouponEvent,
  }) {
    return addCartEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetCartQurreyModel getCartQurreyModel)? getCartEvent,
    TResult? Function(int id)? addCartEvent,
    TResult? Function(int id)? removeCartEvent,
    TResult? Function(int id)? cartIncrementEvent,
    TResult? Function(int id)? cartDecrementEvent,
    TResult? Function()? getCouponEvent,
    TResult? Function(GetCouponModel getCouponModel)? applyCouponEvent,
  }) {
    return addCartEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetCartQurreyModel getCartQurreyModel)? getCartEvent,
    TResult Function(int id)? addCartEvent,
    TResult Function(int id)? removeCartEvent,
    TResult Function(int id)? cartIncrementEvent,
    TResult Function(int id)? cartDecrementEvent,
    TResult Function()? getCouponEvent,
    TResult Function(GetCouponModel getCouponModel)? applyCouponEvent,
    required TResult orElse(),
  }) {
    if (addCartEvent != null) {
      return addCartEvent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCartEvent value) getCartEvent,
    required TResult Function(AddCartEvent value) addCartEvent,
    required TResult Function(RemoveCartEvent value) removeCartEvent,
    required TResult Function(CartIncrementQuntityEvent value)
        cartIncrementEvent,
    required TResult Function(CartDecrementQuntityEvent value)
        cartDecrementEvent,
    required TResult Function(GetCouponEvent value) getCouponEvent,
    required TResult Function(ApplyCouponEvent value) applyCouponEvent,
  }) {
    return addCartEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCartEvent value)? getCartEvent,
    TResult? Function(AddCartEvent value)? addCartEvent,
    TResult? Function(RemoveCartEvent value)? removeCartEvent,
    TResult? Function(CartIncrementQuntityEvent value)? cartIncrementEvent,
    TResult? Function(CartDecrementQuntityEvent value)? cartDecrementEvent,
    TResult? Function(GetCouponEvent value)? getCouponEvent,
    TResult? Function(ApplyCouponEvent value)? applyCouponEvent,
  }) {
    return addCartEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCartEvent value)? getCartEvent,
    TResult Function(AddCartEvent value)? addCartEvent,
    TResult Function(RemoveCartEvent value)? removeCartEvent,
    TResult Function(CartIncrementQuntityEvent value)? cartIncrementEvent,
    TResult Function(CartDecrementQuntityEvent value)? cartDecrementEvent,
    TResult Function(GetCouponEvent value)? getCouponEvent,
    TResult Function(ApplyCouponEvent value)? applyCouponEvent,
    required TResult orElse(),
  }) {
    if (addCartEvent != null) {
      return addCartEvent(this);
    }
    return orElse();
  }
}

abstract class AddCartEvent implements CartEvent {
  const factory AddCartEvent({required final int id}) = _$AddCartEventImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$AddCartEventImplCopyWith<_$AddCartEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveCartEventImplCopyWith<$Res> {
  factory _$$RemoveCartEventImplCopyWith(_$RemoveCartEventImpl value,
          $Res Function(_$RemoveCartEventImpl) then) =
      __$$RemoveCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$RemoveCartEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$RemoveCartEventImpl>
    implements _$$RemoveCartEventImplCopyWith<$Res> {
  __$$RemoveCartEventImplCopyWithImpl(
      _$RemoveCartEventImpl _value, $Res Function(_$RemoveCartEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RemoveCartEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveCartEventImpl implements RemoveCartEvent {
  const _$RemoveCartEventImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CartEvent.removeCartEvent(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveCartEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveCartEventImplCopyWith<_$RemoveCartEventImpl> get copyWith =>
      __$$RemoveCartEventImplCopyWithImpl<_$RemoveCartEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetCartQurreyModel getCartQurreyModel)
        getCartEvent,
    required TResult Function(int id) addCartEvent,
    required TResult Function(int id) removeCartEvent,
    required TResult Function(int id) cartIncrementEvent,
    required TResult Function(int id) cartDecrementEvent,
    required TResult Function() getCouponEvent,
    required TResult Function(GetCouponModel getCouponModel) applyCouponEvent,
  }) {
    return removeCartEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetCartQurreyModel getCartQurreyModel)? getCartEvent,
    TResult? Function(int id)? addCartEvent,
    TResult? Function(int id)? removeCartEvent,
    TResult? Function(int id)? cartIncrementEvent,
    TResult? Function(int id)? cartDecrementEvent,
    TResult? Function()? getCouponEvent,
    TResult? Function(GetCouponModel getCouponModel)? applyCouponEvent,
  }) {
    return removeCartEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetCartQurreyModel getCartQurreyModel)? getCartEvent,
    TResult Function(int id)? addCartEvent,
    TResult Function(int id)? removeCartEvent,
    TResult Function(int id)? cartIncrementEvent,
    TResult Function(int id)? cartDecrementEvent,
    TResult Function()? getCouponEvent,
    TResult Function(GetCouponModel getCouponModel)? applyCouponEvent,
    required TResult orElse(),
  }) {
    if (removeCartEvent != null) {
      return removeCartEvent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCartEvent value) getCartEvent,
    required TResult Function(AddCartEvent value) addCartEvent,
    required TResult Function(RemoveCartEvent value) removeCartEvent,
    required TResult Function(CartIncrementQuntityEvent value)
        cartIncrementEvent,
    required TResult Function(CartDecrementQuntityEvent value)
        cartDecrementEvent,
    required TResult Function(GetCouponEvent value) getCouponEvent,
    required TResult Function(ApplyCouponEvent value) applyCouponEvent,
  }) {
    return removeCartEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCartEvent value)? getCartEvent,
    TResult? Function(AddCartEvent value)? addCartEvent,
    TResult? Function(RemoveCartEvent value)? removeCartEvent,
    TResult? Function(CartIncrementQuntityEvent value)? cartIncrementEvent,
    TResult? Function(CartDecrementQuntityEvent value)? cartDecrementEvent,
    TResult? Function(GetCouponEvent value)? getCouponEvent,
    TResult? Function(ApplyCouponEvent value)? applyCouponEvent,
  }) {
    return removeCartEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCartEvent value)? getCartEvent,
    TResult Function(AddCartEvent value)? addCartEvent,
    TResult Function(RemoveCartEvent value)? removeCartEvent,
    TResult Function(CartIncrementQuntityEvent value)? cartIncrementEvent,
    TResult Function(CartDecrementQuntityEvent value)? cartDecrementEvent,
    TResult Function(GetCouponEvent value)? getCouponEvent,
    TResult Function(ApplyCouponEvent value)? applyCouponEvent,
    required TResult orElse(),
  }) {
    if (removeCartEvent != null) {
      return removeCartEvent(this);
    }
    return orElse();
  }
}

abstract class RemoveCartEvent implements CartEvent {
  const factory RemoveCartEvent({required final int id}) =
      _$RemoveCartEventImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$RemoveCartEventImplCopyWith<_$RemoveCartEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartIncrementQuntityEventImplCopyWith<$Res> {
  factory _$$CartIncrementQuntityEventImplCopyWith(
          _$CartIncrementQuntityEventImpl value,
          $Res Function(_$CartIncrementQuntityEventImpl) then) =
      __$$CartIncrementQuntityEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$CartIncrementQuntityEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartIncrementQuntityEventImpl>
    implements _$$CartIncrementQuntityEventImplCopyWith<$Res> {
  __$$CartIncrementQuntityEventImplCopyWithImpl(
      _$CartIncrementQuntityEventImpl _value,
      $Res Function(_$CartIncrementQuntityEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$CartIncrementQuntityEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CartIncrementQuntityEventImpl implements CartIncrementQuntityEvent {
  const _$CartIncrementQuntityEventImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CartEvent.cartIncrementEvent(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartIncrementQuntityEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartIncrementQuntityEventImplCopyWith<_$CartIncrementQuntityEventImpl>
      get copyWith => __$$CartIncrementQuntityEventImplCopyWithImpl<
          _$CartIncrementQuntityEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetCartQurreyModel getCartQurreyModel)
        getCartEvent,
    required TResult Function(int id) addCartEvent,
    required TResult Function(int id) removeCartEvent,
    required TResult Function(int id) cartIncrementEvent,
    required TResult Function(int id) cartDecrementEvent,
    required TResult Function() getCouponEvent,
    required TResult Function(GetCouponModel getCouponModel) applyCouponEvent,
  }) {
    return cartIncrementEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetCartQurreyModel getCartQurreyModel)? getCartEvent,
    TResult? Function(int id)? addCartEvent,
    TResult? Function(int id)? removeCartEvent,
    TResult? Function(int id)? cartIncrementEvent,
    TResult? Function(int id)? cartDecrementEvent,
    TResult? Function()? getCouponEvent,
    TResult? Function(GetCouponModel getCouponModel)? applyCouponEvent,
  }) {
    return cartIncrementEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetCartQurreyModel getCartQurreyModel)? getCartEvent,
    TResult Function(int id)? addCartEvent,
    TResult Function(int id)? removeCartEvent,
    TResult Function(int id)? cartIncrementEvent,
    TResult Function(int id)? cartDecrementEvent,
    TResult Function()? getCouponEvent,
    TResult Function(GetCouponModel getCouponModel)? applyCouponEvent,
    required TResult orElse(),
  }) {
    if (cartIncrementEvent != null) {
      return cartIncrementEvent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCartEvent value) getCartEvent,
    required TResult Function(AddCartEvent value) addCartEvent,
    required TResult Function(RemoveCartEvent value) removeCartEvent,
    required TResult Function(CartIncrementQuntityEvent value)
        cartIncrementEvent,
    required TResult Function(CartDecrementQuntityEvent value)
        cartDecrementEvent,
    required TResult Function(GetCouponEvent value) getCouponEvent,
    required TResult Function(ApplyCouponEvent value) applyCouponEvent,
  }) {
    return cartIncrementEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCartEvent value)? getCartEvent,
    TResult? Function(AddCartEvent value)? addCartEvent,
    TResult? Function(RemoveCartEvent value)? removeCartEvent,
    TResult? Function(CartIncrementQuntityEvent value)? cartIncrementEvent,
    TResult? Function(CartDecrementQuntityEvent value)? cartDecrementEvent,
    TResult? Function(GetCouponEvent value)? getCouponEvent,
    TResult? Function(ApplyCouponEvent value)? applyCouponEvent,
  }) {
    return cartIncrementEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCartEvent value)? getCartEvent,
    TResult Function(AddCartEvent value)? addCartEvent,
    TResult Function(RemoveCartEvent value)? removeCartEvent,
    TResult Function(CartIncrementQuntityEvent value)? cartIncrementEvent,
    TResult Function(CartDecrementQuntityEvent value)? cartDecrementEvent,
    TResult Function(GetCouponEvent value)? getCouponEvent,
    TResult Function(ApplyCouponEvent value)? applyCouponEvent,
    required TResult orElse(),
  }) {
    if (cartIncrementEvent != null) {
      return cartIncrementEvent(this);
    }
    return orElse();
  }
}

abstract class CartIncrementQuntityEvent implements CartEvent {
  const factory CartIncrementQuntityEvent({required final int id}) =
      _$CartIncrementQuntityEventImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$CartIncrementQuntityEventImplCopyWith<_$CartIncrementQuntityEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartDecrementQuntityEventImplCopyWith<$Res> {
  factory _$$CartDecrementQuntityEventImplCopyWith(
          _$CartDecrementQuntityEventImpl value,
          $Res Function(_$CartDecrementQuntityEventImpl) then) =
      __$$CartDecrementQuntityEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$CartDecrementQuntityEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartDecrementQuntityEventImpl>
    implements _$$CartDecrementQuntityEventImplCopyWith<$Res> {
  __$$CartDecrementQuntityEventImplCopyWithImpl(
      _$CartDecrementQuntityEventImpl _value,
      $Res Function(_$CartDecrementQuntityEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$CartDecrementQuntityEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CartDecrementQuntityEventImpl implements CartDecrementQuntityEvent {
  const _$CartDecrementQuntityEventImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CartEvent.cartDecrementEvent(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartDecrementQuntityEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartDecrementQuntityEventImplCopyWith<_$CartDecrementQuntityEventImpl>
      get copyWith => __$$CartDecrementQuntityEventImplCopyWithImpl<
          _$CartDecrementQuntityEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetCartQurreyModel getCartQurreyModel)
        getCartEvent,
    required TResult Function(int id) addCartEvent,
    required TResult Function(int id) removeCartEvent,
    required TResult Function(int id) cartIncrementEvent,
    required TResult Function(int id) cartDecrementEvent,
    required TResult Function() getCouponEvent,
    required TResult Function(GetCouponModel getCouponModel) applyCouponEvent,
  }) {
    return cartDecrementEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetCartQurreyModel getCartQurreyModel)? getCartEvent,
    TResult? Function(int id)? addCartEvent,
    TResult? Function(int id)? removeCartEvent,
    TResult? Function(int id)? cartIncrementEvent,
    TResult? Function(int id)? cartDecrementEvent,
    TResult? Function()? getCouponEvent,
    TResult? Function(GetCouponModel getCouponModel)? applyCouponEvent,
  }) {
    return cartDecrementEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetCartQurreyModel getCartQurreyModel)? getCartEvent,
    TResult Function(int id)? addCartEvent,
    TResult Function(int id)? removeCartEvent,
    TResult Function(int id)? cartIncrementEvent,
    TResult Function(int id)? cartDecrementEvent,
    TResult Function()? getCouponEvent,
    TResult Function(GetCouponModel getCouponModel)? applyCouponEvent,
    required TResult orElse(),
  }) {
    if (cartDecrementEvent != null) {
      return cartDecrementEvent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCartEvent value) getCartEvent,
    required TResult Function(AddCartEvent value) addCartEvent,
    required TResult Function(RemoveCartEvent value) removeCartEvent,
    required TResult Function(CartIncrementQuntityEvent value)
        cartIncrementEvent,
    required TResult Function(CartDecrementQuntityEvent value)
        cartDecrementEvent,
    required TResult Function(GetCouponEvent value) getCouponEvent,
    required TResult Function(ApplyCouponEvent value) applyCouponEvent,
  }) {
    return cartDecrementEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCartEvent value)? getCartEvent,
    TResult? Function(AddCartEvent value)? addCartEvent,
    TResult? Function(RemoveCartEvent value)? removeCartEvent,
    TResult? Function(CartIncrementQuntityEvent value)? cartIncrementEvent,
    TResult? Function(CartDecrementQuntityEvent value)? cartDecrementEvent,
    TResult? Function(GetCouponEvent value)? getCouponEvent,
    TResult? Function(ApplyCouponEvent value)? applyCouponEvent,
  }) {
    return cartDecrementEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCartEvent value)? getCartEvent,
    TResult Function(AddCartEvent value)? addCartEvent,
    TResult Function(RemoveCartEvent value)? removeCartEvent,
    TResult Function(CartIncrementQuntityEvent value)? cartIncrementEvent,
    TResult Function(CartDecrementQuntityEvent value)? cartDecrementEvent,
    TResult Function(GetCouponEvent value)? getCouponEvent,
    TResult Function(ApplyCouponEvent value)? applyCouponEvent,
    required TResult orElse(),
  }) {
    if (cartDecrementEvent != null) {
      return cartDecrementEvent(this);
    }
    return orElse();
  }
}

abstract class CartDecrementQuntityEvent implements CartEvent {
  const factory CartDecrementQuntityEvent({required final int id}) =
      _$CartDecrementQuntityEventImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$CartDecrementQuntityEventImplCopyWith<_$CartDecrementQuntityEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCouponEventImplCopyWith<$Res> {
  factory _$$GetCouponEventImplCopyWith(_$GetCouponEventImpl value,
          $Res Function(_$GetCouponEventImpl) then) =
      __$$GetCouponEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCouponEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetCouponEventImpl>
    implements _$$GetCouponEventImplCopyWith<$Res> {
  __$$GetCouponEventImplCopyWithImpl(
      _$GetCouponEventImpl _value, $Res Function(_$GetCouponEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCouponEventImpl implements GetCouponEvent {
  const _$GetCouponEventImpl();

  @override
  String toString() {
    return 'CartEvent.getCouponEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCouponEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetCartQurreyModel getCartQurreyModel)
        getCartEvent,
    required TResult Function(int id) addCartEvent,
    required TResult Function(int id) removeCartEvent,
    required TResult Function(int id) cartIncrementEvent,
    required TResult Function(int id) cartDecrementEvent,
    required TResult Function() getCouponEvent,
    required TResult Function(GetCouponModel getCouponModel) applyCouponEvent,
  }) {
    return getCouponEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetCartQurreyModel getCartQurreyModel)? getCartEvent,
    TResult? Function(int id)? addCartEvent,
    TResult? Function(int id)? removeCartEvent,
    TResult? Function(int id)? cartIncrementEvent,
    TResult? Function(int id)? cartDecrementEvent,
    TResult? Function()? getCouponEvent,
    TResult? Function(GetCouponModel getCouponModel)? applyCouponEvent,
  }) {
    return getCouponEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetCartQurreyModel getCartQurreyModel)? getCartEvent,
    TResult Function(int id)? addCartEvent,
    TResult Function(int id)? removeCartEvent,
    TResult Function(int id)? cartIncrementEvent,
    TResult Function(int id)? cartDecrementEvent,
    TResult Function()? getCouponEvent,
    TResult Function(GetCouponModel getCouponModel)? applyCouponEvent,
    required TResult orElse(),
  }) {
    if (getCouponEvent != null) {
      return getCouponEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCartEvent value) getCartEvent,
    required TResult Function(AddCartEvent value) addCartEvent,
    required TResult Function(RemoveCartEvent value) removeCartEvent,
    required TResult Function(CartIncrementQuntityEvent value)
        cartIncrementEvent,
    required TResult Function(CartDecrementQuntityEvent value)
        cartDecrementEvent,
    required TResult Function(GetCouponEvent value) getCouponEvent,
    required TResult Function(ApplyCouponEvent value) applyCouponEvent,
  }) {
    return getCouponEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCartEvent value)? getCartEvent,
    TResult? Function(AddCartEvent value)? addCartEvent,
    TResult? Function(RemoveCartEvent value)? removeCartEvent,
    TResult? Function(CartIncrementQuntityEvent value)? cartIncrementEvent,
    TResult? Function(CartDecrementQuntityEvent value)? cartDecrementEvent,
    TResult? Function(GetCouponEvent value)? getCouponEvent,
    TResult? Function(ApplyCouponEvent value)? applyCouponEvent,
  }) {
    return getCouponEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCartEvent value)? getCartEvent,
    TResult Function(AddCartEvent value)? addCartEvent,
    TResult Function(RemoveCartEvent value)? removeCartEvent,
    TResult Function(CartIncrementQuntityEvent value)? cartIncrementEvent,
    TResult Function(CartDecrementQuntityEvent value)? cartDecrementEvent,
    TResult Function(GetCouponEvent value)? getCouponEvent,
    TResult Function(ApplyCouponEvent value)? applyCouponEvent,
    required TResult orElse(),
  }) {
    if (getCouponEvent != null) {
      return getCouponEvent(this);
    }
    return orElse();
  }
}

abstract class GetCouponEvent implements CartEvent {
  const factory GetCouponEvent() = _$GetCouponEventImpl;
}

/// @nodoc
abstract class _$$ApplyCouponEventImplCopyWith<$Res> {
  factory _$$ApplyCouponEventImplCopyWith(_$ApplyCouponEventImpl value,
          $Res Function(_$ApplyCouponEventImpl) then) =
      __$$ApplyCouponEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetCouponModel getCouponModel});
}

/// @nodoc
class __$$ApplyCouponEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ApplyCouponEventImpl>
    implements _$$ApplyCouponEventImplCopyWith<$Res> {
  __$$ApplyCouponEventImplCopyWithImpl(_$ApplyCouponEventImpl _value,
      $Res Function(_$ApplyCouponEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCouponModel = null,
  }) {
    return _then(_$ApplyCouponEventImpl(
      getCouponModel: null == getCouponModel
          ? _value.getCouponModel
          : getCouponModel // ignore: cast_nullable_to_non_nullable
              as GetCouponModel,
    ));
  }
}

/// @nodoc

class _$ApplyCouponEventImpl implements ApplyCouponEvent {
  const _$ApplyCouponEventImpl({required this.getCouponModel});

  @override
  final GetCouponModel getCouponModel;

  @override
  String toString() {
    return 'CartEvent.applyCouponEvent(getCouponModel: $getCouponModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplyCouponEventImpl &&
            (identical(other.getCouponModel, getCouponModel) ||
                other.getCouponModel == getCouponModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getCouponModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplyCouponEventImplCopyWith<_$ApplyCouponEventImpl> get copyWith =>
      __$$ApplyCouponEventImplCopyWithImpl<_$ApplyCouponEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetCartQurreyModel getCartQurreyModel)
        getCartEvent,
    required TResult Function(int id) addCartEvent,
    required TResult Function(int id) removeCartEvent,
    required TResult Function(int id) cartIncrementEvent,
    required TResult Function(int id) cartDecrementEvent,
    required TResult Function() getCouponEvent,
    required TResult Function(GetCouponModel getCouponModel) applyCouponEvent,
  }) {
    return applyCouponEvent(getCouponModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetCartQurreyModel getCartQurreyModel)? getCartEvent,
    TResult? Function(int id)? addCartEvent,
    TResult? Function(int id)? removeCartEvent,
    TResult? Function(int id)? cartIncrementEvent,
    TResult? Function(int id)? cartDecrementEvent,
    TResult? Function()? getCouponEvent,
    TResult? Function(GetCouponModel getCouponModel)? applyCouponEvent,
  }) {
    return applyCouponEvent?.call(getCouponModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetCartQurreyModel getCartQurreyModel)? getCartEvent,
    TResult Function(int id)? addCartEvent,
    TResult Function(int id)? removeCartEvent,
    TResult Function(int id)? cartIncrementEvent,
    TResult Function(int id)? cartDecrementEvent,
    TResult Function()? getCouponEvent,
    TResult Function(GetCouponModel getCouponModel)? applyCouponEvent,
    required TResult orElse(),
  }) {
    if (applyCouponEvent != null) {
      return applyCouponEvent(getCouponModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCartEvent value) getCartEvent,
    required TResult Function(AddCartEvent value) addCartEvent,
    required TResult Function(RemoveCartEvent value) removeCartEvent,
    required TResult Function(CartIncrementQuntityEvent value)
        cartIncrementEvent,
    required TResult Function(CartDecrementQuntityEvent value)
        cartDecrementEvent,
    required TResult Function(GetCouponEvent value) getCouponEvent,
    required TResult Function(ApplyCouponEvent value) applyCouponEvent,
  }) {
    return applyCouponEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCartEvent value)? getCartEvent,
    TResult? Function(AddCartEvent value)? addCartEvent,
    TResult? Function(RemoveCartEvent value)? removeCartEvent,
    TResult? Function(CartIncrementQuntityEvent value)? cartIncrementEvent,
    TResult? Function(CartDecrementQuntityEvent value)? cartDecrementEvent,
    TResult? Function(GetCouponEvent value)? getCouponEvent,
    TResult? Function(ApplyCouponEvent value)? applyCouponEvent,
  }) {
    return applyCouponEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCartEvent value)? getCartEvent,
    TResult Function(AddCartEvent value)? addCartEvent,
    TResult Function(RemoveCartEvent value)? removeCartEvent,
    TResult Function(CartIncrementQuntityEvent value)? cartIncrementEvent,
    TResult Function(CartDecrementQuntityEvent value)? cartDecrementEvent,
    TResult Function(GetCouponEvent value)? getCouponEvent,
    TResult Function(ApplyCouponEvent value)? applyCouponEvent,
    required TResult orElse(),
  }) {
    if (applyCouponEvent != null) {
      return applyCouponEvent(this);
    }
    return orElse();
  }
}

abstract class ApplyCouponEvent implements CartEvent {
  const factory ApplyCouponEvent(
      {required final GetCouponModel getCouponModel}) = _$ApplyCouponEventImpl;

  GetCouponModel get getCouponModel;
  @JsonKey(ignore: true)
  _$$ApplyCouponEventImplCopyWith<_$ApplyCouponEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get quantityIndicator => throw _privateConstructorUsedError;
  bool get isCoupon => throw _privateConstructorUsedError;
  bool get isCouponsFetched => throw _privateConstructorUsedError;
  Map<int, int> get cartItems => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get bugTotal => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  CartModel? get cartModel => throw _privateConstructorUsedError;
  GetCartRespModel? get getCartRespModel => throw _privateConstructorUsedError;
  AddCartRespModel? get addCartRespModel => throw _privateConstructorUsedError;
  IncrementAndDecrementRespModel? get incrementAndDecrementRespModel =>
      throw _privateConstructorUsedError;
  RemoveCartRespModel? get removeCartRespModel =>
      throw _privateConstructorUsedError;
  ApplyCouponRespModel? get applyCouponRespModel =>
      throw _privateConstructorUsedError;
  GetCouponRespModel? get getCouponRespModel =>
      throw _privateConstructorUsedError;
  List<GetCouponModel>? get coupon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool quantityIndicator,
      bool isCoupon,
      bool isCouponsFetched,
      Map<int, int> cartItems,
      bool isDone,
      String? message,
      int? bugTotal,
      int? discount,
      CartModel? cartModel,
      GetCartRespModel? getCartRespModel,
      AddCartRespModel? addCartRespModel,
      IncrementAndDecrementRespModel? incrementAndDecrementRespModel,
      RemoveCartRespModel? removeCartRespModel,
      ApplyCouponRespModel? applyCouponRespModel,
      GetCouponRespModel? getCouponRespModel,
      List<GetCouponModel>? coupon});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? quantityIndicator = null,
    Object? isCoupon = null,
    Object? isCouponsFetched = null,
    Object? cartItems = null,
    Object? isDone = null,
    Object? message = freezed,
    Object? bugTotal = freezed,
    Object? discount = freezed,
    Object? cartModel = freezed,
    Object? getCartRespModel = freezed,
    Object? addCartRespModel = freezed,
    Object? incrementAndDecrementRespModel = freezed,
    Object? removeCartRespModel = freezed,
    Object? applyCouponRespModel = freezed,
    Object? getCouponRespModel = freezed,
    Object? coupon = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      quantityIndicator: null == quantityIndicator
          ? _value.quantityIndicator
          : quantityIndicator // ignore: cast_nullable_to_non_nullable
              as bool,
      isCoupon: null == isCoupon
          ? _value.isCoupon
          : isCoupon // ignore: cast_nullable_to_non_nullable
              as bool,
      isCouponsFetched: null == isCouponsFetched
          ? _value.isCouponsFetched
          : isCouponsFetched // ignore: cast_nullable_to_non_nullable
              as bool,
      cartItems: null == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      bugTotal: freezed == bugTotal
          ? _value.bugTotal
          : bugTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      cartModel: freezed == cartModel
          ? _value.cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as CartModel?,
      getCartRespModel: freezed == getCartRespModel
          ? _value.getCartRespModel
          : getCartRespModel // ignore: cast_nullable_to_non_nullable
              as GetCartRespModel?,
      addCartRespModel: freezed == addCartRespModel
          ? _value.addCartRespModel
          : addCartRespModel // ignore: cast_nullable_to_non_nullable
              as AddCartRespModel?,
      incrementAndDecrementRespModel: freezed == incrementAndDecrementRespModel
          ? _value.incrementAndDecrementRespModel
          : incrementAndDecrementRespModel // ignore: cast_nullable_to_non_nullable
              as IncrementAndDecrementRespModel?,
      removeCartRespModel: freezed == removeCartRespModel
          ? _value.removeCartRespModel
          : removeCartRespModel // ignore: cast_nullable_to_non_nullable
              as RemoveCartRespModel?,
      applyCouponRespModel: freezed == applyCouponRespModel
          ? _value.applyCouponRespModel
          : applyCouponRespModel // ignore: cast_nullable_to_non_nullable
              as ApplyCouponRespModel?,
      getCouponRespModel: freezed == getCouponRespModel
          ? _value.getCouponRespModel
          : getCouponRespModel // ignore: cast_nullable_to_non_nullable
              as GetCouponRespModel?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as List<GetCouponModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool quantityIndicator,
      bool isCoupon,
      bool isCouponsFetched,
      Map<int, int> cartItems,
      bool isDone,
      String? message,
      int? bugTotal,
      int? discount,
      CartModel? cartModel,
      GetCartRespModel? getCartRespModel,
      AddCartRespModel? addCartRespModel,
      IncrementAndDecrementRespModel? incrementAndDecrementRespModel,
      RemoveCartRespModel? removeCartRespModel,
      ApplyCouponRespModel? applyCouponRespModel,
      GetCouponRespModel? getCouponRespModel,
      List<GetCouponModel>? coupon});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? quantityIndicator = null,
    Object? isCoupon = null,
    Object? isCouponsFetched = null,
    Object? cartItems = null,
    Object? isDone = null,
    Object? message = freezed,
    Object? bugTotal = freezed,
    Object? discount = freezed,
    Object? cartModel = freezed,
    Object? getCartRespModel = freezed,
    Object? addCartRespModel = freezed,
    Object? incrementAndDecrementRespModel = freezed,
    Object? removeCartRespModel = freezed,
    Object? applyCouponRespModel = freezed,
    Object? getCouponRespModel = freezed,
    Object? coupon = freezed,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      quantityIndicator: null == quantityIndicator
          ? _value.quantityIndicator
          : quantityIndicator // ignore: cast_nullable_to_non_nullable
              as bool,
      isCoupon: null == isCoupon
          ? _value.isCoupon
          : isCoupon // ignore: cast_nullable_to_non_nullable
              as bool,
      isCouponsFetched: null == isCouponsFetched
          ? _value.isCouponsFetched
          : isCouponsFetched // ignore: cast_nullable_to_non_nullable
              as bool,
      cartItems: null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      bugTotal: freezed == bugTotal
          ? _value.bugTotal
          : bugTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      cartModel: freezed == cartModel
          ? _value.cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as CartModel?,
      getCartRespModel: freezed == getCartRespModel
          ? _value.getCartRespModel
          : getCartRespModel // ignore: cast_nullable_to_non_nullable
              as GetCartRespModel?,
      addCartRespModel: freezed == addCartRespModel
          ? _value.addCartRespModel
          : addCartRespModel // ignore: cast_nullable_to_non_nullable
              as AddCartRespModel?,
      incrementAndDecrementRespModel: freezed == incrementAndDecrementRespModel
          ? _value.incrementAndDecrementRespModel
          : incrementAndDecrementRespModel // ignore: cast_nullable_to_non_nullable
              as IncrementAndDecrementRespModel?,
      removeCartRespModel: freezed == removeCartRespModel
          ? _value.removeCartRespModel
          : removeCartRespModel // ignore: cast_nullable_to_non_nullable
              as RemoveCartRespModel?,
      applyCouponRespModel: freezed == applyCouponRespModel
          ? _value.applyCouponRespModel
          : applyCouponRespModel // ignore: cast_nullable_to_non_nullable
              as ApplyCouponRespModel?,
      getCouponRespModel: freezed == getCouponRespModel
          ? _value.getCouponRespModel
          : getCouponRespModel // ignore: cast_nullable_to_non_nullable
              as GetCouponRespModel?,
      coupon: freezed == coupon
          ? _value._coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as List<GetCouponModel>?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      required this.quantityIndicator,
      required this.isCoupon,
      required this.isCouponsFetched,
      required final Map<int, int> cartItems,
      required this.isDone,
      this.message,
      this.bugTotal,
      this.discount,
      this.cartModel,
      this.getCartRespModel,
      this.addCartRespModel,
      this.incrementAndDecrementRespModel,
      this.removeCartRespModel,
      this.applyCouponRespModel,
      this.getCouponRespModel,
      final List<GetCouponModel>? coupon})
      : _cartItems = cartItems,
        _coupon = coupon;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool quantityIndicator;
  @override
  final bool isCoupon;
  @override
  final bool isCouponsFetched;
  final Map<int, int> _cartItems;
  @override
  Map<int, int> get cartItems {
    if (_cartItems is EqualUnmodifiableMapView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cartItems);
  }

  @override
  final bool isDone;
  @override
  final String? message;
  @override
  final int? bugTotal;
  @override
  final int? discount;
  @override
  final CartModel? cartModel;
  @override
  final GetCartRespModel? getCartRespModel;
  @override
  final AddCartRespModel? addCartRespModel;
  @override
  final IncrementAndDecrementRespModel? incrementAndDecrementRespModel;
  @override
  final RemoveCartRespModel? removeCartRespModel;
  @override
  final ApplyCouponRespModel? applyCouponRespModel;
  @override
  final GetCouponRespModel? getCouponRespModel;
  final List<GetCouponModel>? _coupon;
  @override
  List<GetCouponModel>? get coupon {
    final value = _coupon;
    if (value == null) return null;
    if (_coupon is EqualUnmodifiableListView) return _coupon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CartState(isLoading: $isLoading, hasError: $hasError, quantityIndicator: $quantityIndicator, isCoupon: $isCoupon, isCouponsFetched: $isCouponsFetched, cartItems: $cartItems, isDone: $isDone, message: $message, bugTotal: $bugTotal, discount: $discount, cartModel: $cartModel, getCartRespModel: $getCartRespModel, addCartRespModel: $addCartRespModel, incrementAndDecrementRespModel: $incrementAndDecrementRespModel, removeCartRespModel: $removeCartRespModel, applyCouponRespModel: $applyCouponRespModel, getCouponRespModel: $getCouponRespModel, coupon: $coupon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.quantityIndicator, quantityIndicator) ||
                other.quantityIndicator == quantityIndicator) &&
            (identical(other.isCoupon, isCoupon) ||
                other.isCoupon == isCoupon) &&
            (identical(other.isCouponsFetched, isCouponsFetched) ||
                other.isCouponsFetched == isCouponsFetched) &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.bugTotal, bugTotal) ||
                other.bugTotal == bugTotal) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.cartModel, cartModel) ||
                other.cartModel == cartModel) &&
            (identical(other.getCartRespModel, getCartRespModel) ||
                other.getCartRespModel == getCartRespModel) &&
            (identical(other.addCartRespModel, addCartRespModel) ||
                other.addCartRespModel == addCartRespModel) &&
            (identical(other.incrementAndDecrementRespModel,
                    incrementAndDecrementRespModel) ||
                other.incrementAndDecrementRespModel ==
                    incrementAndDecrementRespModel) &&
            (identical(other.removeCartRespModel, removeCartRespModel) ||
                other.removeCartRespModel == removeCartRespModel) &&
            (identical(other.applyCouponRespModel, applyCouponRespModel) ||
                other.applyCouponRespModel == applyCouponRespModel) &&
            (identical(other.getCouponRespModel, getCouponRespModel) ||
                other.getCouponRespModel == getCouponRespModel) &&
            const DeepCollectionEquality().equals(other._coupon, _coupon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      quantityIndicator,
      isCoupon,
      isCouponsFetched,
      const DeepCollectionEquality().hash(_cartItems),
      isDone,
      message,
      bugTotal,
      discount,
      cartModel,
      getCartRespModel,
      addCartRespModel,
      incrementAndDecrementRespModel,
      removeCartRespModel,
      applyCouponRespModel,
      getCouponRespModel,
      const DeepCollectionEquality().hash(_coupon));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements CartState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      required final bool quantityIndicator,
      required final bool isCoupon,
      required final bool isCouponsFetched,
      required final Map<int, int> cartItems,
      required final bool isDone,
      final String? message,
      final int? bugTotal,
      final int? discount,
      final CartModel? cartModel,
      final GetCartRespModel? getCartRespModel,
      final AddCartRespModel? addCartRespModel,
      final IncrementAndDecrementRespModel? incrementAndDecrementRespModel,
      final RemoveCartRespModel? removeCartRespModel,
      final ApplyCouponRespModel? applyCouponRespModel,
      final GetCouponRespModel? getCouponRespModel,
      final List<GetCouponModel>? coupon}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get quantityIndicator;
  @override
  bool get isCoupon;
  @override
  bool get isCouponsFetched;
  @override
  Map<int, int> get cartItems;
  @override
  bool get isDone;
  @override
  String? get message;
  @override
  int? get bugTotal;
  @override
  int? get discount;
  @override
  CartModel? get cartModel;
  @override
  GetCartRespModel? get getCartRespModel;
  @override
  AddCartRespModel? get addCartRespModel;
  @override
  IncrementAndDecrementRespModel? get incrementAndDecrementRespModel;
  @override
  RemoveCartRespModel? get removeCartRespModel;
  @override
  ApplyCouponRespModel? get applyCouponRespModel;
  @override
  GetCouponRespModel? get getCouponRespModel;
  @override
  List<GetCouponModel>? get coupon;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
