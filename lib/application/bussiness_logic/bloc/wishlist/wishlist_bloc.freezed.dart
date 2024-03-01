// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WishlistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetWishlistQurreyModel getWishlistQurreyModel)
        getWishlistEvent,
    required TResult Function(int id) addWishlistEvent,
    required TResult Function(int id) removeWhislitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetWishlistQurreyModel getWishlistQurreyModel)?
        getWishlistEvent,
    TResult? Function(int id)? addWishlistEvent,
    TResult? Function(int id)? removeWhislitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetWishlistQurreyModel getWishlistQurreyModel)?
        getWishlistEvent,
    TResult Function(int id)? addWishlistEvent,
    TResult Function(int id)? removeWhislitEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWishlistEvent value) getWishlistEvent,
    required TResult Function(AddWishlistEvent value) addWishlistEvent,
    required TResult Function(RemoveWishlistEvent value) removeWhislitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetWishlistEvent value)? getWishlistEvent,
    TResult? Function(AddWishlistEvent value)? addWishlistEvent,
    TResult? Function(RemoveWishlistEvent value)? removeWhislitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWishlistEvent value)? getWishlistEvent,
    TResult Function(AddWishlistEvent value)? addWishlistEvent,
    TResult Function(RemoveWishlistEvent value)? removeWhislitEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistEventCopyWith<$Res> {
  factory $WishlistEventCopyWith(
          WishlistEvent value, $Res Function(WishlistEvent) then) =
      _$WishlistEventCopyWithImpl<$Res, WishlistEvent>;
}

/// @nodoc
class _$WishlistEventCopyWithImpl<$Res, $Val extends WishlistEvent>
    implements $WishlistEventCopyWith<$Res> {
  _$WishlistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetWishlistEventImplCopyWith<$Res> {
  factory _$$GetWishlistEventImplCopyWith(_$GetWishlistEventImpl value,
          $Res Function(_$GetWishlistEventImpl) then) =
      __$$GetWishlistEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetWishlistQurreyModel getWishlistQurreyModel});
}

/// @nodoc
class __$$GetWishlistEventImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$GetWishlistEventImpl>
    implements _$$GetWishlistEventImplCopyWith<$Res> {
  __$$GetWishlistEventImplCopyWithImpl(_$GetWishlistEventImpl _value,
      $Res Function(_$GetWishlistEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getWishlistQurreyModel = null,
  }) {
    return _then(_$GetWishlistEventImpl(
      getWishlistQurreyModel: null == getWishlistQurreyModel
          ? _value.getWishlistQurreyModel
          : getWishlistQurreyModel // ignore: cast_nullable_to_non_nullable
              as GetWishlistQurreyModel,
    ));
  }
}

/// @nodoc

class _$GetWishlistEventImpl implements GetWishlistEvent {
  const _$GetWishlistEventImpl({required this.getWishlistQurreyModel});

  @override
  final GetWishlistQurreyModel getWishlistQurreyModel;

  @override
  String toString() {
    return 'WishlistEvent.getWishlistEvent(getWishlistQurreyModel: $getWishlistQurreyModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWishlistEventImpl &&
            (identical(other.getWishlistQurreyModel, getWishlistQurreyModel) ||
                other.getWishlistQurreyModel == getWishlistQurreyModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getWishlistQurreyModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWishlistEventImplCopyWith<_$GetWishlistEventImpl> get copyWith =>
      __$$GetWishlistEventImplCopyWithImpl<_$GetWishlistEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetWishlistQurreyModel getWishlistQurreyModel)
        getWishlistEvent,
    required TResult Function(int id) addWishlistEvent,
    required TResult Function(int id) removeWhislitEvent,
  }) {
    return getWishlistEvent(getWishlistQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetWishlistQurreyModel getWishlistQurreyModel)?
        getWishlistEvent,
    TResult? Function(int id)? addWishlistEvent,
    TResult? Function(int id)? removeWhislitEvent,
  }) {
    return getWishlistEvent?.call(getWishlistQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetWishlistQurreyModel getWishlistQurreyModel)?
        getWishlistEvent,
    TResult Function(int id)? addWishlistEvent,
    TResult Function(int id)? removeWhislitEvent,
    required TResult orElse(),
  }) {
    if (getWishlistEvent != null) {
      return getWishlistEvent(getWishlistQurreyModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWishlistEvent value) getWishlistEvent,
    required TResult Function(AddWishlistEvent value) addWishlistEvent,
    required TResult Function(RemoveWishlistEvent value) removeWhislitEvent,
  }) {
    return getWishlistEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetWishlistEvent value)? getWishlistEvent,
    TResult? Function(AddWishlistEvent value)? addWishlistEvent,
    TResult? Function(RemoveWishlistEvent value)? removeWhislitEvent,
  }) {
    return getWishlistEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWishlistEvent value)? getWishlistEvent,
    TResult Function(AddWishlistEvent value)? addWishlistEvent,
    TResult Function(RemoveWishlistEvent value)? removeWhislitEvent,
    required TResult orElse(),
  }) {
    if (getWishlistEvent != null) {
      return getWishlistEvent(this);
    }
    return orElse();
  }
}

abstract class GetWishlistEvent implements WishlistEvent {
  const factory GetWishlistEvent(
          {required final GetWishlistQurreyModel getWishlistQurreyModel}) =
      _$GetWishlistEventImpl;

  GetWishlistQurreyModel get getWishlistQurreyModel;
  @JsonKey(ignore: true)
  _$$GetWishlistEventImplCopyWith<_$GetWishlistEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddWishlistEventImplCopyWith<$Res> {
  factory _$$AddWishlistEventImplCopyWith(_$AddWishlistEventImpl value,
          $Res Function(_$AddWishlistEventImpl) then) =
      __$$AddWishlistEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$AddWishlistEventImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$AddWishlistEventImpl>
    implements _$$AddWishlistEventImplCopyWith<$Res> {
  __$$AddWishlistEventImplCopyWithImpl(_$AddWishlistEventImpl _value,
      $Res Function(_$AddWishlistEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$AddWishlistEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddWishlistEventImpl implements AddWishlistEvent {
  const _$AddWishlistEventImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'WishlistEvent.addWishlistEvent(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddWishlistEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddWishlistEventImplCopyWith<_$AddWishlistEventImpl> get copyWith =>
      __$$AddWishlistEventImplCopyWithImpl<_$AddWishlistEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetWishlistQurreyModel getWishlistQurreyModel)
        getWishlistEvent,
    required TResult Function(int id) addWishlistEvent,
    required TResult Function(int id) removeWhislitEvent,
  }) {
    return addWishlistEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetWishlistQurreyModel getWishlistQurreyModel)?
        getWishlistEvent,
    TResult? Function(int id)? addWishlistEvent,
    TResult? Function(int id)? removeWhislitEvent,
  }) {
    return addWishlistEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetWishlistQurreyModel getWishlistQurreyModel)?
        getWishlistEvent,
    TResult Function(int id)? addWishlistEvent,
    TResult Function(int id)? removeWhislitEvent,
    required TResult orElse(),
  }) {
    if (addWishlistEvent != null) {
      return addWishlistEvent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWishlistEvent value) getWishlistEvent,
    required TResult Function(AddWishlistEvent value) addWishlistEvent,
    required TResult Function(RemoveWishlistEvent value) removeWhislitEvent,
  }) {
    return addWishlistEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetWishlistEvent value)? getWishlistEvent,
    TResult? Function(AddWishlistEvent value)? addWishlistEvent,
    TResult? Function(RemoveWishlistEvent value)? removeWhislitEvent,
  }) {
    return addWishlistEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWishlistEvent value)? getWishlistEvent,
    TResult Function(AddWishlistEvent value)? addWishlistEvent,
    TResult Function(RemoveWishlistEvent value)? removeWhislitEvent,
    required TResult orElse(),
  }) {
    if (addWishlistEvent != null) {
      return addWishlistEvent(this);
    }
    return orElse();
  }
}

abstract class AddWishlistEvent implements WishlistEvent {
  const factory AddWishlistEvent({required final int id}) =
      _$AddWishlistEventImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$AddWishlistEventImplCopyWith<_$AddWishlistEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveWishlistEventImplCopyWith<$Res> {
  factory _$$RemoveWishlistEventImplCopyWith(_$RemoveWishlistEventImpl value,
          $Res Function(_$RemoveWishlistEventImpl) then) =
      __$$RemoveWishlistEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$RemoveWishlistEventImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$RemoveWishlistEventImpl>
    implements _$$RemoveWishlistEventImplCopyWith<$Res> {
  __$$RemoveWishlistEventImplCopyWithImpl(_$RemoveWishlistEventImpl _value,
      $Res Function(_$RemoveWishlistEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RemoveWishlistEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveWishlistEventImpl implements RemoveWishlistEvent {
  const _$RemoveWishlistEventImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'WishlistEvent.removeWhislitEvent(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveWishlistEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveWishlistEventImplCopyWith<_$RemoveWishlistEventImpl> get copyWith =>
      __$$RemoveWishlistEventImplCopyWithImpl<_$RemoveWishlistEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetWishlistQurreyModel getWishlistQurreyModel)
        getWishlistEvent,
    required TResult Function(int id) addWishlistEvent,
    required TResult Function(int id) removeWhislitEvent,
  }) {
    return removeWhislitEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetWishlistQurreyModel getWishlistQurreyModel)?
        getWishlistEvent,
    TResult? Function(int id)? addWishlistEvent,
    TResult? Function(int id)? removeWhislitEvent,
  }) {
    return removeWhislitEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetWishlistQurreyModel getWishlistQurreyModel)?
        getWishlistEvent,
    TResult Function(int id)? addWishlistEvent,
    TResult Function(int id)? removeWhislitEvent,
    required TResult orElse(),
  }) {
    if (removeWhislitEvent != null) {
      return removeWhislitEvent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWishlistEvent value) getWishlistEvent,
    required TResult Function(AddWishlistEvent value) addWishlistEvent,
    required TResult Function(RemoveWishlistEvent value) removeWhislitEvent,
  }) {
    return removeWhislitEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetWishlistEvent value)? getWishlistEvent,
    TResult? Function(AddWishlistEvent value)? addWishlistEvent,
    TResult? Function(RemoveWishlistEvent value)? removeWhislitEvent,
  }) {
    return removeWhislitEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWishlistEvent value)? getWishlistEvent,
    TResult Function(AddWishlistEvent value)? addWishlistEvent,
    TResult Function(RemoveWishlistEvent value)? removeWhislitEvent,
    required TResult orElse(),
  }) {
    if (removeWhislitEvent != null) {
      return removeWhislitEvent(this);
    }
    return orElse();
  }
}

abstract class RemoveWishlistEvent implements WishlistEvent {
  const factory RemoveWishlistEvent({required final int id}) =
      _$RemoveWishlistEventImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$RemoveWishlistEventImplCopyWith<_$RemoveWishlistEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WishlistState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  GetWishlistRespModel? get getWishlistRespModel =>
      throw _privateConstructorUsedError;
  AddRemoveWishlistResp? get addRemoveWishlistResp =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WishlistStateCopyWith<WishlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistStateCopyWith<$Res> {
  factory $WishlistStateCopyWith(
          WishlistState value, $Res Function(WishlistState) then) =
      _$WishlistStateCopyWithImpl<$Res, WishlistState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isDone,
      String? message,
      GetWishlistRespModel? getWishlistRespModel,
      AddRemoveWishlistResp? addRemoveWishlistResp});
}

/// @nodoc
class _$WishlistStateCopyWithImpl<$Res, $Val extends WishlistState>
    implements $WishlistStateCopyWith<$Res> {
  _$WishlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? isDone = null,
    Object? message = freezed,
    Object? getWishlistRespModel = freezed,
    Object? addRemoveWishlistResp = freezed,
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
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      getWishlistRespModel: freezed == getWishlistRespModel
          ? _value.getWishlistRespModel
          : getWishlistRespModel // ignore: cast_nullable_to_non_nullable
              as GetWishlistRespModel?,
      addRemoveWishlistResp: freezed == addRemoveWishlistResp
          ? _value.addRemoveWishlistResp
          : addRemoveWishlistResp // ignore: cast_nullable_to_non_nullable
              as AddRemoveWishlistResp?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$initialImplCopyWith<$Res>
    implements $WishlistStateCopyWith<$Res> {
  factory _$$initialImplCopyWith(
          _$initialImpl value, $Res Function(_$initialImpl) then) =
      __$$initialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isDone,
      String? message,
      GetWishlistRespModel? getWishlistRespModel,
      AddRemoveWishlistResp? addRemoveWishlistResp});
}

/// @nodoc
class __$$initialImplCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res, _$initialImpl>
    implements _$$initialImplCopyWith<$Res> {
  __$$initialImplCopyWithImpl(
      _$initialImpl _value, $Res Function(_$initialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? isDone = null,
    Object? message = freezed,
    Object? getWishlistRespModel = freezed,
    Object? addRemoveWishlistResp = freezed,
  }) {
    return _then(_$initialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      getWishlistRespModel: freezed == getWishlistRespModel
          ? _value.getWishlistRespModel
          : getWishlistRespModel // ignore: cast_nullable_to_non_nullable
              as GetWishlistRespModel?,
      addRemoveWishlistResp: freezed == addRemoveWishlistResp
          ? _value.addRemoveWishlistResp
          : addRemoveWishlistResp // ignore: cast_nullable_to_non_nullable
              as AddRemoveWishlistResp?,
    ));
  }
}

/// @nodoc

class _$initialImpl implements _initial {
  const _$initialImpl(
      {required this.isLoading,
      required this.hasError,
      required this.isDone,
      this.message,
      this.getWishlistRespModel,
      this.addRemoveWishlistResp});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool isDone;
  @override
  final String? message;
  @override
  final GetWishlistRespModel? getWishlistRespModel;
  @override
  final AddRemoveWishlistResp? addRemoveWishlistResp;

  @override
  String toString() {
    return 'WishlistState(isLoading: $isLoading, hasError: $hasError, isDone: $isDone, message: $message, getWishlistRespModel: $getWishlistRespModel, addRemoveWishlistResp: $addRemoveWishlistResp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$initialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.getWishlistRespModel, getWishlistRespModel) ||
                other.getWishlistRespModel == getWishlistRespModel) &&
            (identical(other.addRemoveWishlistResp, addRemoveWishlistResp) ||
                other.addRemoveWishlistResp == addRemoveWishlistResp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError, isDone,
      message, getWishlistRespModel, addRemoveWishlistResp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$initialImplCopyWith<_$initialImpl> get copyWith =>
      __$$initialImplCopyWithImpl<_$initialImpl>(this, _$identity);
}

abstract class _initial implements WishlistState {
  const factory _initial(
      {required final bool isLoading,
      required final bool hasError,
      required final bool isDone,
      final String? message,
      final GetWishlistRespModel? getWishlistRespModel,
      final AddRemoveWishlistResp? addRemoveWishlistResp}) = _$initialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get isDone;
  @override
  String? get message;
  @override
  GetWishlistRespModel? get getWishlistRespModel;
  @override
  AddRemoveWishlistResp? get addRemoveWishlistResp;
  @override
  @JsonKey(ignore: true)
  _$$initialImplCopyWith<_$initialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
