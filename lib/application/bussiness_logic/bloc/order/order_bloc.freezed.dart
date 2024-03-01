// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCheckoutEvent,
    required TResult Function(int selectPayementId) selectPayement,
    required TResult Function(GetOrderQurreyModel getOrderQurreyModel)
        getOrderEvent,
    required TResult Function(RazorpayProcesModel razorpayProcesModel)
        razorpayProcess,
    required TResult Function() cashOnDeliveryEvent,
    required TResult Function() getRazorpay,
    required TResult Function(OrderQrrey orderQrrey) cancelOrderEvent,
    required TResult Function(OrderQrrey orderQrrey) returnOrderEvent,
    required TResult Function(
            RatingModel ratingModel, RatingQurrey ratingQurrey)
        ratingProductEvent,
    required TResult Function() selectWalletEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCheckoutEvent,
    TResult? Function(int selectPayementId)? selectPayement,
    TResult? Function(GetOrderQurreyModel getOrderQurreyModel)? getOrderEvent,
    TResult? Function(RazorpayProcesModel razorpayProcesModel)? razorpayProcess,
    TResult? Function()? cashOnDeliveryEvent,
    TResult? Function()? getRazorpay,
    TResult? Function(OrderQrrey orderQrrey)? cancelOrderEvent,
    TResult? Function(OrderQrrey orderQrrey)? returnOrderEvent,
    TResult? Function(RatingModel ratingModel, RatingQurrey ratingQurrey)?
        ratingProductEvent,
    TResult? Function()? selectWalletEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCheckoutEvent,
    TResult Function(int selectPayementId)? selectPayement,
    TResult Function(GetOrderQurreyModel getOrderQurreyModel)? getOrderEvent,
    TResult Function(RazorpayProcesModel razorpayProcesModel)? razorpayProcess,
    TResult Function()? cashOnDeliveryEvent,
    TResult Function()? getRazorpay,
    TResult Function(OrderQrrey orderQrrey)? cancelOrderEvent,
    TResult Function(OrderQrrey orderQrrey)? returnOrderEvent,
    TResult Function(RatingModel ratingModel, RatingQurrey ratingQurrey)?
        ratingProductEvent,
    TResult Function()? selectWalletEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCheckOutEvent value) getCheckoutEvent,
    required TResult Function(SelectPayementEvent value) selectPayement,
    required TResult Function(GetOrderEvent value) getOrderEvent,
    required TResult Function(RazorpayProcessEvent value) razorpayProcess,
    required TResult Function(CashOnDeliveryEvent value) cashOnDeliveryEvent,
    required TResult Function(GetRazorpayEvent value) getRazorpay,
    required TResult Function(CancelOrderEvent value) cancelOrderEvent,
    required TResult Function(ReturnOrderEvent value) returnOrderEvent,
    required TResult Function(RatingProductEvent value) ratingProductEvent,
    required TResult Function(SelectWalletEvent value) selectWalletEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCheckOutEvent value)? getCheckoutEvent,
    TResult? Function(SelectPayementEvent value)? selectPayement,
    TResult? Function(GetOrderEvent value)? getOrderEvent,
    TResult? Function(RazorpayProcessEvent value)? razorpayProcess,
    TResult? Function(CashOnDeliveryEvent value)? cashOnDeliveryEvent,
    TResult? Function(GetRazorpayEvent value)? getRazorpay,
    TResult? Function(CancelOrderEvent value)? cancelOrderEvent,
    TResult? Function(ReturnOrderEvent value)? returnOrderEvent,
    TResult? Function(RatingProductEvent value)? ratingProductEvent,
    TResult? Function(SelectWalletEvent value)? selectWalletEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCheckOutEvent value)? getCheckoutEvent,
    TResult Function(SelectPayementEvent value)? selectPayement,
    TResult Function(GetOrderEvent value)? getOrderEvent,
    TResult Function(RazorpayProcessEvent value)? razorpayProcess,
    TResult Function(CashOnDeliveryEvent value)? cashOnDeliveryEvent,
    TResult Function(GetRazorpayEvent value)? getRazorpay,
    TResult Function(CancelOrderEvent value)? cancelOrderEvent,
    TResult Function(ReturnOrderEvent value)? returnOrderEvent,
    TResult Function(RatingProductEvent value)? ratingProductEvent,
    TResult Function(SelectWalletEvent value)? selectWalletEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCheckOutEventImplCopyWith<$Res> {
  factory _$$GetCheckOutEventImplCopyWith(_$GetCheckOutEventImpl value,
          $Res Function(_$GetCheckOutEventImpl) then) =
      __$$GetCheckOutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCheckOutEventImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetCheckOutEventImpl>
    implements _$$GetCheckOutEventImplCopyWith<$Res> {
  __$$GetCheckOutEventImplCopyWithImpl(_$GetCheckOutEventImpl _value,
      $Res Function(_$GetCheckOutEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCheckOutEventImpl implements GetCheckOutEvent {
  const _$GetCheckOutEventImpl();

  @override
  String toString() {
    return 'OrderEvent.getCheckoutEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCheckOutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCheckoutEvent,
    required TResult Function(int selectPayementId) selectPayement,
    required TResult Function(GetOrderQurreyModel getOrderQurreyModel)
        getOrderEvent,
    required TResult Function(RazorpayProcesModel razorpayProcesModel)
        razorpayProcess,
    required TResult Function() cashOnDeliveryEvent,
    required TResult Function() getRazorpay,
    required TResult Function(OrderQrrey orderQrrey) cancelOrderEvent,
    required TResult Function(OrderQrrey orderQrrey) returnOrderEvent,
    required TResult Function(
            RatingModel ratingModel, RatingQurrey ratingQurrey)
        ratingProductEvent,
    required TResult Function() selectWalletEvent,
  }) {
    return getCheckoutEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCheckoutEvent,
    TResult? Function(int selectPayementId)? selectPayement,
    TResult? Function(GetOrderQurreyModel getOrderQurreyModel)? getOrderEvent,
    TResult? Function(RazorpayProcesModel razorpayProcesModel)? razorpayProcess,
    TResult? Function()? cashOnDeliveryEvent,
    TResult? Function()? getRazorpay,
    TResult? Function(OrderQrrey orderQrrey)? cancelOrderEvent,
    TResult? Function(OrderQrrey orderQrrey)? returnOrderEvent,
    TResult? Function(RatingModel ratingModel, RatingQurrey ratingQurrey)?
        ratingProductEvent,
    TResult? Function()? selectWalletEvent,
  }) {
    return getCheckoutEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCheckoutEvent,
    TResult Function(int selectPayementId)? selectPayement,
    TResult Function(GetOrderQurreyModel getOrderQurreyModel)? getOrderEvent,
    TResult Function(RazorpayProcesModel razorpayProcesModel)? razorpayProcess,
    TResult Function()? cashOnDeliveryEvent,
    TResult Function()? getRazorpay,
    TResult Function(OrderQrrey orderQrrey)? cancelOrderEvent,
    TResult Function(OrderQrrey orderQrrey)? returnOrderEvent,
    TResult Function(RatingModel ratingModel, RatingQurrey ratingQurrey)?
        ratingProductEvent,
    TResult Function()? selectWalletEvent,
    required TResult orElse(),
  }) {
    if (getCheckoutEvent != null) {
      return getCheckoutEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCheckOutEvent value) getCheckoutEvent,
    required TResult Function(SelectPayementEvent value) selectPayement,
    required TResult Function(GetOrderEvent value) getOrderEvent,
    required TResult Function(RazorpayProcessEvent value) razorpayProcess,
    required TResult Function(CashOnDeliveryEvent value) cashOnDeliveryEvent,
    required TResult Function(GetRazorpayEvent value) getRazorpay,
    required TResult Function(CancelOrderEvent value) cancelOrderEvent,
    required TResult Function(ReturnOrderEvent value) returnOrderEvent,
    required TResult Function(RatingProductEvent value) ratingProductEvent,
    required TResult Function(SelectWalletEvent value) selectWalletEvent,
  }) {
    return getCheckoutEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCheckOutEvent value)? getCheckoutEvent,
    TResult? Function(SelectPayementEvent value)? selectPayement,
    TResult? Function(GetOrderEvent value)? getOrderEvent,
    TResult? Function(RazorpayProcessEvent value)? razorpayProcess,
    TResult? Function(CashOnDeliveryEvent value)? cashOnDeliveryEvent,
    TResult? Function(GetRazorpayEvent value)? getRazorpay,
    TResult? Function(CancelOrderEvent value)? cancelOrderEvent,
    TResult? Function(ReturnOrderEvent value)? returnOrderEvent,
    TResult? Function(RatingProductEvent value)? ratingProductEvent,
    TResult? Function(SelectWalletEvent value)? selectWalletEvent,
  }) {
    return getCheckoutEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCheckOutEvent value)? getCheckoutEvent,
    TResult Function(SelectPayementEvent value)? selectPayement,
    TResult Function(GetOrderEvent value)? getOrderEvent,
    TResult Function(RazorpayProcessEvent value)? razorpayProcess,
    TResult Function(CashOnDeliveryEvent value)? cashOnDeliveryEvent,
    TResult Function(GetRazorpayEvent value)? getRazorpay,
    TResult Function(CancelOrderEvent value)? cancelOrderEvent,
    TResult Function(ReturnOrderEvent value)? returnOrderEvent,
    TResult Function(RatingProductEvent value)? ratingProductEvent,
    TResult Function(SelectWalletEvent value)? selectWalletEvent,
    required TResult orElse(),
  }) {
    if (getCheckoutEvent != null) {
      return getCheckoutEvent(this);
    }
    return orElse();
  }
}

abstract class GetCheckOutEvent implements OrderEvent {
  const factory GetCheckOutEvent() = _$GetCheckOutEventImpl;
}

/// @nodoc
abstract class _$$SelectPayementEventImplCopyWith<$Res> {
  factory _$$SelectPayementEventImplCopyWith(_$SelectPayementEventImpl value,
          $Res Function(_$SelectPayementEventImpl) then) =
      __$$SelectPayementEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int selectPayementId});
}

/// @nodoc
class __$$SelectPayementEventImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$SelectPayementEventImpl>
    implements _$$SelectPayementEventImplCopyWith<$Res> {
  __$$SelectPayementEventImplCopyWithImpl(_$SelectPayementEventImpl _value,
      $Res Function(_$SelectPayementEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectPayementId = null,
  }) {
    return _then(_$SelectPayementEventImpl(
      selectPayementId: null == selectPayementId
          ? _value.selectPayementId
          : selectPayementId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectPayementEventImpl implements SelectPayementEvent {
  const _$SelectPayementEventImpl({required this.selectPayementId});

  @override
  final int selectPayementId;

  @override
  String toString() {
    return 'OrderEvent.selectPayement(selectPayementId: $selectPayementId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectPayementEventImpl &&
            (identical(other.selectPayementId, selectPayementId) ||
                other.selectPayementId == selectPayementId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectPayementId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectPayementEventImplCopyWith<_$SelectPayementEventImpl> get copyWith =>
      __$$SelectPayementEventImplCopyWithImpl<_$SelectPayementEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCheckoutEvent,
    required TResult Function(int selectPayementId) selectPayement,
    required TResult Function(GetOrderQurreyModel getOrderQurreyModel)
        getOrderEvent,
    required TResult Function(RazorpayProcesModel razorpayProcesModel)
        razorpayProcess,
    required TResult Function() cashOnDeliveryEvent,
    required TResult Function() getRazorpay,
    required TResult Function(OrderQrrey orderQrrey) cancelOrderEvent,
    required TResult Function(OrderQrrey orderQrrey) returnOrderEvent,
    required TResult Function(
            RatingModel ratingModel, RatingQurrey ratingQurrey)
        ratingProductEvent,
    required TResult Function() selectWalletEvent,
  }) {
    return selectPayement(selectPayementId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCheckoutEvent,
    TResult? Function(int selectPayementId)? selectPayement,
    TResult? Function(GetOrderQurreyModel getOrderQurreyModel)? getOrderEvent,
    TResult? Function(RazorpayProcesModel razorpayProcesModel)? razorpayProcess,
    TResult? Function()? cashOnDeliveryEvent,
    TResult? Function()? getRazorpay,
    TResult? Function(OrderQrrey orderQrrey)? cancelOrderEvent,
    TResult? Function(OrderQrrey orderQrrey)? returnOrderEvent,
    TResult? Function(RatingModel ratingModel, RatingQurrey ratingQurrey)?
        ratingProductEvent,
    TResult? Function()? selectWalletEvent,
  }) {
    return selectPayement?.call(selectPayementId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCheckoutEvent,
    TResult Function(int selectPayementId)? selectPayement,
    TResult Function(GetOrderQurreyModel getOrderQurreyModel)? getOrderEvent,
    TResult Function(RazorpayProcesModel razorpayProcesModel)? razorpayProcess,
    TResult Function()? cashOnDeliveryEvent,
    TResult Function()? getRazorpay,
    TResult Function(OrderQrrey orderQrrey)? cancelOrderEvent,
    TResult Function(OrderQrrey orderQrrey)? returnOrderEvent,
    TResult Function(RatingModel ratingModel, RatingQurrey ratingQurrey)?
        ratingProductEvent,
    TResult Function()? selectWalletEvent,
    required TResult orElse(),
  }) {
    if (selectPayement != null) {
      return selectPayement(selectPayementId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCheckOutEvent value) getCheckoutEvent,
    required TResult Function(SelectPayementEvent value) selectPayement,
    required TResult Function(GetOrderEvent value) getOrderEvent,
    required TResult Function(RazorpayProcessEvent value) razorpayProcess,
    required TResult Function(CashOnDeliveryEvent value) cashOnDeliveryEvent,
    required TResult Function(GetRazorpayEvent value) getRazorpay,
    required TResult Function(CancelOrderEvent value) cancelOrderEvent,
    required TResult Function(ReturnOrderEvent value) returnOrderEvent,
    required TResult Function(RatingProductEvent value) ratingProductEvent,
    required TResult Function(SelectWalletEvent value) selectWalletEvent,
  }) {
    return selectPayement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCheckOutEvent value)? getCheckoutEvent,
    TResult? Function(SelectPayementEvent value)? selectPayement,
    TResult? Function(GetOrderEvent value)? getOrderEvent,
    TResult? Function(RazorpayProcessEvent value)? razorpayProcess,
    TResult? Function(CashOnDeliveryEvent value)? cashOnDeliveryEvent,
    TResult? Function(GetRazorpayEvent value)? getRazorpay,
    TResult? Function(CancelOrderEvent value)? cancelOrderEvent,
    TResult? Function(ReturnOrderEvent value)? returnOrderEvent,
    TResult? Function(RatingProductEvent value)? ratingProductEvent,
    TResult? Function(SelectWalletEvent value)? selectWalletEvent,
  }) {
    return selectPayement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCheckOutEvent value)? getCheckoutEvent,
    TResult Function(SelectPayementEvent value)? selectPayement,
    TResult Function(GetOrderEvent value)? getOrderEvent,
    TResult Function(RazorpayProcessEvent value)? razorpayProcess,
    TResult Function(CashOnDeliveryEvent value)? cashOnDeliveryEvent,
    TResult Function(GetRazorpayEvent value)? getRazorpay,
    TResult Function(CancelOrderEvent value)? cancelOrderEvent,
    TResult Function(ReturnOrderEvent value)? returnOrderEvent,
    TResult Function(RatingProductEvent value)? ratingProductEvent,
    TResult Function(SelectWalletEvent value)? selectWalletEvent,
    required TResult orElse(),
  }) {
    if (selectPayement != null) {
      return selectPayement(this);
    }
    return orElse();
  }
}

abstract class SelectPayementEvent implements OrderEvent {
  const factory SelectPayementEvent({required final int selectPayementId}) =
      _$SelectPayementEventImpl;

  int get selectPayementId;
  @JsonKey(ignore: true)
  _$$SelectPayementEventImplCopyWith<_$SelectPayementEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetOrderEventImplCopyWith<$Res> {
  factory _$$GetOrderEventImplCopyWith(
          _$GetOrderEventImpl value, $Res Function(_$GetOrderEventImpl) then) =
      __$$GetOrderEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetOrderQurreyModel getOrderQurreyModel});
}

/// @nodoc
class __$$GetOrderEventImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetOrderEventImpl>
    implements _$$GetOrderEventImplCopyWith<$Res> {
  __$$GetOrderEventImplCopyWithImpl(
      _$GetOrderEventImpl _value, $Res Function(_$GetOrderEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getOrderQurreyModel = null,
  }) {
    return _then(_$GetOrderEventImpl(
      getOrderQurreyModel: null == getOrderQurreyModel
          ? _value.getOrderQurreyModel
          : getOrderQurreyModel // ignore: cast_nullable_to_non_nullable
              as GetOrderQurreyModel,
    ));
  }
}

/// @nodoc

class _$GetOrderEventImpl implements GetOrderEvent {
  const _$GetOrderEventImpl({required this.getOrderQurreyModel});

  @override
  final GetOrderQurreyModel getOrderQurreyModel;

  @override
  String toString() {
    return 'OrderEvent.getOrderEvent(getOrderQurreyModel: $getOrderQurreyModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderEventImpl &&
            (identical(other.getOrderQurreyModel, getOrderQurreyModel) ||
                other.getOrderQurreyModel == getOrderQurreyModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getOrderQurreyModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderEventImplCopyWith<_$GetOrderEventImpl> get copyWith =>
      __$$GetOrderEventImplCopyWithImpl<_$GetOrderEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCheckoutEvent,
    required TResult Function(int selectPayementId) selectPayement,
    required TResult Function(GetOrderQurreyModel getOrderQurreyModel)
        getOrderEvent,
    required TResult Function(RazorpayProcesModel razorpayProcesModel)
        razorpayProcess,
    required TResult Function() cashOnDeliveryEvent,
    required TResult Function() getRazorpay,
    required TResult Function(OrderQrrey orderQrrey) cancelOrderEvent,
    required TResult Function(OrderQrrey orderQrrey) returnOrderEvent,
    required TResult Function(
            RatingModel ratingModel, RatingQurrey ratingQurrey)
        ratingProductEvent,
    required TResult Function() selectWalletEvent,
  }) {
    return getOrderEvent(getOrderQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCheckoutEvent,
    TResult? Function(int selectPayementId)? selectPayement,
    TResult? Function(GetOrderQurreyModel getOrderQurreyModel)? getOrderEvent,
    TResult? Function(RazorpayProcesModel razorpayProcesModel)? razorpayProcess,
    TResult? Function()? cashOnDeliveryEvent,
    TResult? Function()? getRazorpay,
    TResult? Function(OrderQrrey orderQrrey)? cancelOrderEvent,
    TResult? Function(OrderQrrey orderQrrey)? returnOrderEvent,
    TResult? Function(RatingModel ratingModel, RatingQurrey ratingQurrey)?
        ratingProductEvent,
    TResult? Function()? selectWalletEvent,
  }) {
    return getOrderEvent?.call(getOrderQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCheckoutEvent,
    TResult Function(int selectPayementId)? selectPayement,
    TResult Function(GetOrderQurreyModel getOrderQurreyModel)? getOrderEvent,
    TResult Function(RazorpayProcesModel razorpayProcesModel)? razorpayProcess,
    TResult Function()? cashOnDeliveryEvent,
    TResult Function()? getRazorpay,
    TResult Function(OrderQrrey orderQrrey)? cancelOrderEvent,
    TResult Function(OrderQrrey orderQrrey)? returnOrderEvent,
    TResult Function(RatingModel ratingModel, RatingQurrey ratingQurrey)?
        ratingProductEvent,
    TResult Function()? selectWalletEvent,
    required TResult orElse(),
  }) {
    if (getOrderEvent != null) {
      return getOrderEvent(getOrderQurreyModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCheckOutEvent value) getCheckoutEvent,
    required TResult Function(SelectPayementEvent value) selectPayement,
    required TResult Function(GetOrderEvent value) getOrderEvent,
    required TResult Function(RazorpayProcessEvent value) razorpayProcess,
    required TResult Function(CashOnDeliveryEvent value) cashOnDeliveryEvent,
    required TResult Function(GetRazorpayEvent value) getRazorpay,
    required TResult Function(CancelOrderEvent value) cancelOrderEvent,
    required TResult Function(ReturnOrderEvent value) returnOrderEvent,
    required TResult Function(RatingProductEvent value) ratingProductEvent,
    required TResult Function(SelectWalletEvent value) selectWalletEvent,
  }) {
    return getOrderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCheckOutEvent value)? getCheckoutEvent,
    TResult? Function(SelectPayementEvent value)? selectPayement,
    TResult? Function(GetOrderEvent value)? getOrderEvent,
    TResult? Function(RazorpayProcessEvent value)? razorpayProcess,
    TResult? Function(CashOnDeliveryEvent value)? cashOnDeliveryEvent,
    TResult? Function(GetRazorpayEvent value)? getRazorpay,
    TResult? Function(CancelOrderEvent value)? cancelOrderEvent,
    TResult? Function(ReturnOrderEvent value)? returnOrderEvent,
    TResult? Function(RatingProductEvent value)? ratingProductEvent,
    TResult? Function(SelectWalletEvent value)? selectWalletEvent,
  }) {
    return getOrderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCheckOutEvent value)? getCheckoutEvent,
    TResult Function(SelectPayementEvent value)? selectPayement,
    TResult Function(GetOrderEvent value)? getOrderEvent,
    TResult Function(RazorpayProcessEvent value)? razorpayProcess,
    TResult Function(CashOnDeliveryEvent value)? cashOnDeliveryEvent,
    TResult Function(GetRazorpayEvent value)? getRazorpay,
    TResult Function(CancelOrderEvent value)? cancelOrderEvent,
    TResult Function(ReturnOrderEvent value)? returnOrderEvent,
    TResult Function(RatingProductEvent value)? ratingProductEvent,
    TResult Function(SelectWalletEvent value)? selectWalletEvent,
    required TResult orElse(),
  }) {
    if (getOrderEvent != null) {
      return getOrderEvent(this);
    }
    return orElse();
  }
}

abstract class GetOrderEvent implements OrderEvent {
  const factory GetOrderEvent(
          {required final GetOrderQurreyModel getOrderQurreyModel}) =
      _$GetOrderEventImpl;

  GetOrderQurreyModel get getOrderQurreyModel;
  @JsonKey(ignore: true)
  _$$GetOrderEventImplCopyWith<_$GetOrderEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RazorpayProcessEventImplCopyWith<$Res> {
  factory _$$RazorpayProcessEventImplCopyWith(_$RazorpayProcessEventImpl value,
          $Res Function(_$RazorpayProcessEventImpl) then) =
      __$$RazorpayProcessEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RazorpayProcesModel razorpayProcesModel});
}

/// @nodoc
class __$$RazorpayProcessEventImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$RazorpayProcessEventImpl>
    implements _$$RazorpayProcessEventImplCopyWith<$Res> {
  __$$RazorpayProcessEventImplCopyWithImpl(_$RazorpayProcessEventImpl _value,
      $Res Function(_$RazorpayProcessEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? razorpayProcesModel = null,
  }) {
    return _then(_$RazorpayProcessEventImpl(
      razorpayProcesModel: null == razorpayProcesModel
          ? _value.razorpayProcesModel
          : razorpayProcesModel // ignore: cast_nullable_to_non_nullable
              as RazorpayProcesModel,
    ));
  }
}

/// @nodoc

class _$RazorpayProcessEventImpl implements RazorpayProcessEvent {
  const _$RazorpayProcessEventImpl({required this.razorpayProcesModel});

  @override
  final RazorpayProcesModel razorpayProcesModel;

  @override
  String toString() {
    return 'OrderEvent.razorpayProcess(razorpayProcesModel: $razorpayProcesModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RazorpayProcessEventImpl &&
            (identical(other.razorpayProcesModel, razorpayProcesModel) ||
                other.razorpayProcesModel == razorpayProcesModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, razorpayProcesModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RazorpayProcessEventImplCopyWith<_$RazorpayProcessEventImpl>
      get copyWith =>
          __$$RazorpayProcessEventImplCopyWithImpl<_$RazorpayProcessEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCheckoutEvent,
    required TResult Function(int selectPayementId) selectPayement,
    required TResult Function(GetOrderQurreyModel getOrderQurreyModel)
        getOrderEvent,
    required TResult Function(RazorpayProcesModel razorpayProcesModel)
        razorpayProcess,
    required TResult Function() cashOnDeliveryEvent,
    required TResult Function() getRazorpay,
    required TResult Function(OrderQrrey orderQrrey) cancelOrderEvent,
    required TResult Function(OrderQrrey orderQrrey) returnOrderEvent,
    required TResult Function(
            RatingModel ratingModel, RatingQurrey ratingQurrey)
        ratingProductEvent,
    required TResult Function() selectWalletEvent,
  }) {
    return razorpayProcess(razorpayProcesModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCheckoutEvent,
    TResult? Function(int selectPayementId)? selectPayement,
    TResult? Function(GetOrderQurreyModel getOrderQurreyModel)? getOrderEvent,
    TResult? Function(RazorpayProcesModel razorpayProcesModel)? razorpayProcess,
    TResult? Function()? cashOnDeliveryEvent,
    TResult? Function()? getRazorpay,
    TResult? Function(OrderQrrey orderQrrey)? cancelOrderEvent,
    TResult? Function(OrderQrrey orderQrrey)? returnOrderEvent,
    TResult? Function(RatingModel ratingModel, RatingQurrey ratingQurrey)?
        ratingProductEvent,
    TResult? Function()? selectWalletEvent,
  }) {
    return razorpayProcess?.call(razorpayProcesModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCheckoutEvent,
    TResult Function(int selectPayementId)? selectPayement,
    TResult Function(GetOrderQurreyModel getOrderQurreyModel)? getOrderEvent,
    TResult Function(RazorpayProcesModel razorpayProcesModel)? razorpayProcess,
    TResult Function()? cashOnDeliveryEvent,
    TResult Function()? getRazorpay,
    TResult Function(OrderQrrey orderQrrey)? cancelOrderEvent,
    TResult Function(OrderQrrey orderQrrey)? returnOrderEvent,
    TResult Function(RatingModel ratingModel, RatingQurrey ratingQurrey)?
        ratingProductEvent,
    TResult Function()? selectWalletEvent,
    required TResult orElse(),
  }) {
    if (razorpayProcess != null) {
      return razorpayProcess(razorpayProcesModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCheckOutEvent value) getCheckoutEvent,
    required TResult Function(SelectPayementEvent value) selectPayement,
    required TResult Function(GetOrderEvent value) getOrderEvent,
    required TResult Function(RazorpayProcessEvent value) razorpayProcess,
    required TResult Function(CashOnDeliveryEvent value) cashOnDeliveryEvent,
    required TResult Function(GetRazorpayEvent value) getRazorpay,
    required TResult Function(CancelOrderEvent value) cancelOrderEvent,
    required TResult Function(ReturnOrderEvent value) returnOrderEvent,
    required TResult Function(RatingProductEvent value) ratingProductEvent,
    required TResult Function(SelectWalletEvent value) selectWalletEvent,
  }) {
    return razorpayProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCheckOutEvent value)? getCheckoutEvent,
    TResult? Function(SelectPayementEvent value)? selectPayement,
    TResult? Function(GetOrderEvent value)? getOrderEvent,
    TResult? Function(RazorpayProcessEvent value)? razorpayProcess,
    TResult? Function(CashOnDeliveryEvent value)? cashOnDeliveryEvent,
    TResult? Function(GetRazorpayEvent value)? getRazorpay,
    TResult? Function(CancelOrderEvent value)? cancelOrderEvent,
    TResult? Function(ReturnOrderEvent value)? returnOrderEvent,
    TResult? Function(RatingProductEvent value)? ratingProductEvent,
    TResult? Function(SelectWalletEvent value)? selectWalletEvent,
  }) {
    return razorpayProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCheckOutEvent value)? getCheckoutEvent,
    TResult Function(SelectPayementEvent value)? selectPayement,
    TResult Function(GetOrderEvent value)? getOrderEvent,
    TResult Function(RazorpayProcessEvent value)? razorpayProcess,
    TResult Function(CashOnDeliveryEvent value)? cashOnDeliveryEvent,
    TResult Function(GetRazorpayEvent value)? getRazorpay,
    TResult Function(CancelOrderEvent value)? cancelOrderEvent,
    TResult Function(ReturnOrderEvent value)? returnOrderEvent,
    TResult Function(RatingProductEvent value)? ratingProductEvent,
    TResult Function(SelectWalletEvent value)? selectWalletEvent,
    required TResult orElse(),
  }) {
    if (razorpayProcess != null) {
      return razorpayProcess(this);
    }
    return orElse();
  }
}

abstract class RazorpayProcessEvent implements OrderEvent {
  const factory RazorpayProcessEvent(
          {required final RazorpayProcesModel razorpayProcesModel}) =
      _$RazorpayProcessEventImpl;

  RazorpayProcesModel get razorpayProcesModel;
  @JsonKey(ignore: true)
  _$$RazorpayProcessEventImplCopyWith<_$RazorpayProcessEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CashOnDeliveryEventImplCopyWith<$Res> {
  factory _$$CashOnDeliveryEventImplCopyWith(_$CashOnDeliveryEventImpl value,
          $Res Function(_$CashOnDeliveryEventImpl) then) =
      __$$CashOnDeliveryEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CashOnDeliveryEventImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$CashOnDeliveryEventImpl>
    implements _$$CashOnDeliveryEventImplCopyWith<$Res> {
  __$$CashOnDeliveryEventImplCopyWithImpl(_$CashOnDeliveryEventImpl _value,
      $Res Function(_$CashOnDeliveryEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CashOnDeliveryEventImpl implements CashOnDeliveryEvent {
  const _$CashOnDeliveryEventImpl();

  @override
  String toString() {
    return 'OrderEvent.cashOnDeliveryEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CashOnDeliveryEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCheckoutEvent,
    required TResult Function(int selectPayementId) selectPayement,
    required TResult Function(GetOrderQurreyModel getOrderQurreyModel)
        getOrderEvent,
    required TResult Function(RazorpayProcesModel razorpayProcesModel)
        razorpayProcess,
    required TResult Function() cashOnDeliveryEvent,
    required TResult Function() getRazorpay,
    required TResult Function(OrderQrrey orderQrrey) cancelOrderEvent,
    required TResult Function(OrderQrrey orderQrrey) returnOrderEvent,
    required TResult Function(
            RatingModel ratingModel, RatingQurrey ratingQurrey)
        ratingProductEvent,
    required TResult Function() selectWalletEvent,
  }) {
    return cashOnDeliveryEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCheckoutEvent,
    TResult? Function(int selectPayementId)? selectPayement,
    TResult? Function(GetOrderQurreyModel getOrderQurreyModel)? getOrderEvent,
    TResult? Function(RazorpayProcesModel razorpayProcesModel)? razorpayProcess,
    TResult? Function()? cashOnDeliveryEvent,
    TResult? Function()? getRazorpay,
    TResult? Function(OrderQrrey orderQrrey)? cancelOrderEvent,
    TResult? Function(OrderQrrey orderQrrey)? returnOrderEvent,
    TResult? Function(RatingModel ratingModel, RatingQurrey ratingQurrey)?
        ratingProductEvent,
    TResult? Function()? selectWalletEvent,
  }) {
    return cashOnDeliveryEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCheckoutEvent,
    TResult Function(int selectPayementId)? selectPayement,
    TResult Function(GetOrderQurreyModel getOrderQurreyModel)? getOrderEvent,
    TResult Function(RazorpayProcesModel razorpayProcesModel)? razorpayProcess,
    TResult Function()? cashOnDeliveryEvent,
    TResult Function()? getRazorpay,
    TResult Function(OrderQrrey orderQrrey)? cancelOrderEvent,
    TResult Function(OrderQrrey orderQrrey)? returnOrderEvent,
    TResult Function(RatingModel ratingModel, RatingQurrey ratingQurrey)?
        ratingProductEvent,
    TResult Function()? selectWalletEvent,
    required TResult orElse(),
  }) {
    if (cashOnDeliveryEvent != null) {
      return cashOnDeliveryEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCheckOutEvent value) getCheckoutEvent,
    required TResult Function(SelectPayementEvent value) selectPayement,
    required TResult Function(GetOrderEvent value) getOrderEvent,
    required TResult Function(RazorpayProcessEvent value) razorpayProcess,
    required TResult Function(CashOnDeliveryEvent value) cashOnDeliveryEvent,
    required TResult Function(GetRazorpayEvent value) getRazorpay,
    required TResult Function(CancelOrderEvent value) cancelOrderEvent,
    required TResult Function(ReturnOrderEvent value) returnOrderEvent,
    required TResult Function(RatingProductEvent value) ratingProductEvent,
    required TResult Function(SelectWalletEvent value) selectWalletEvent,
  }) {
    return cashOnDeliveryEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCheckOutEvent value)? getCheckoutEvent,
    TResult? Function(SelectPayementEvent value)? selectPayement,
    TResult? Function(GetOrderEvent value)? getOrderEvent,
    TResult? Function(RazorpayProcessEvent value)? razorpayProcess,
    TResult? Function(CashOnDeliveryEvent value)? cashOnDeliveryEvent,
    TResult? Function(GetRazorpayEvent value)? getRazorpay,
    TResult? Function(CancelOrderEvent value)? cancelOrderEvent,
    TResult? Function(ReturnOrderEvent value)? returnOrderEvent,
    TResult? Function(RatingProductEvent value)? ratingProductEvent,
    TResult? Function(SelectWalletEvent value)? selectWalletEvent,
  }) {
    return cashOnDeliveryEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCheckOutEvent value)? getCheckoutEvent,
    TResult Function(SelectPayementEvent value)? selectPayement,
    TResult Function(GetOrderEvent value)? getOrderEvent,
    TResult Function(RazorpayProcessEvent value)? razorpayProcess,
    TResult Function(CashOnDeliveryEvent value)? cashOnDeliveryEvent,
    TResult Function(GetRazorpayEvent value)? getRazorpay,
    TResult Function(CancelOrderEvent value)? cancelOrderEvent,
    TResult Function(ReturnOrderEvent value)? returnOrderEvent,
    TResult Function(RatingProductEvent value)? ratingProductEvent,
    TResult Function(SelectWalletEvent value)? selectWalletEvent,
    required TResult orElse(),
  }) {
    if (cashOnDeliveryEvent != null) {
      return cashOnDeliveryEvent(this);
    }
    return orElse();
  }
}

abstract class CashOnDeliveryEvent implements OrderEvent {
  const factory CashOnDeliveryEvent() = _$CashOnDeliveryEventImpl;
}

/// @nodoc
abstract class _$$GetRazorpayEventImplCopyWith<$Res> {
  factory _$$GetRazorpayEventImplCopyWith(_$GetRazorpayEventImpl value,
          $Res Function(_$GetRazorpayEventImpl) then) =
      __$$GetRazorpayEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRazorpayEventImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetRazorpayEventImpl>
    implements _$$GetRazorpayEventImplCopyWith<$Res> {
  __$$GetRazorpayEventImplCopyWithImpl(_$GetRazorpayEventImpl _value,
      $Res Function(_$GetRazorpayEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRazorpayEventImpl implements GetRazorpayEvent {
  const _$GetRazorpayEventImpl();

  @override
  String toString() {
    return 'OrderEvent.getRazorpay()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRazorpayEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCheckoutEvent,
    required TResult Function(int selectPayementId) selectPayement,
    required TResult Function(GetOrderQurreyModel getOrderQurreyModel)
        getOrderEvent,
    required TResult Function(RazorpayProcesModel razorpayProcesModel)
        razorpayProcess,
    required TResult Function() cashOnDeliveryEvent,
    required TResult Function() getRazorpay,
    required TResult Function(OrderQrrey orderQrrey) cancelOrderEvent,
    required TResult Function(OrderQrrey orderQrrey) returnOrderEvent,
    required TResult Function(
            RatingModel ratingModel, RatingQurrey ratingQurrey)
        ratingProductEvent,
    required TResult Function() selectWalletEvent,
  }) {
    return getRazorpay();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCheckoutEvent,
    TResult? Function(int selectPayementId)? selectPayement,
    TResult? Function(GetOrderQurreyModel getOrderQurreyModel)? getOrderEvent,
    TResult? Function(RazorpayProcesModel razorpayProcesModel)? razorpayProcess,
    TResult? Function()? cashOnDeliveryEvent,
    TResult? Function()? getRazorpay,
    TResult? Function(OrderQrrey orderQrrey)? cancelOrderEvent,
    TResult? Function(OrderQrrey orderQrrey)? returnOrderEvent,
    TResult? Function(RatingModel ratingModel, RatingQurrey ratingQurrey)?
        ratingProductEvent,
    TResult? Function()? selectWalletEvent,
  }) {
    return getRazorpay?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCheckoutEvent,
    TResult Function(int selectPayementId)? selectPayement,
    TResult Function(GetOrderQurreyModel getOrderQurreyModel)? getOrderEvent,
    TResult Function(RazorpayProcesModel razorpayProcesModel)? razorpayProcess,
    TResult Function()? cashOnDeliveryEvent,
    TResult Function()? getRazorpay,
    TResult Function(OrderQrrey orderQrrey)? cancelOrderEvent,
    TResult Function(OrderQrrey orderQrrey)? returnOrderEvent,
    TResult Function(RatingModel ratingModel, RatingQurrey ratingQurrey)?
        ratingProductEvent,
    TResult Function()? selectWalletEvent,
    required TResult orElse(),
  }) {
    if (getRazorpay != null) {
      return getRazorpay();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCheckOutEvent value) getCheckoutEvent,
    required TResult Function(SelectPayementEvent value) selectPayement,
    required TResult Function(GetOrderEvent value) getOrderEvent,
    required TResult Function(RazorpayProcessEvent value) razorpayProcess,
    required TResult Function(CashOnDeliveryEvent value) cashOnDeliveryEvent,
    required TResult Function(GetRazorpayEvent value) getRazorpay,
    required TResult Function(CancelOrderEvent value) cancelOrderEvent,
    required TResult Function(ReturnOrderEvent value) returnOrderEvent,
    required TResult Function(RatingProductEvent value) ratingProductEvent,
    required TResult Function(SelectWalletEvent value) selectWalletEvent,
  }) {
    return getRazorpay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCheckOutEvent value)? getCheckoutEvent,
    TResult? Function(SelectPayementEvent value)? selectPayement,
    TResult? Function(GetOrderEvent value)? getOrderEvent,
    TResult? Function(RazorpayProcessEvent value)? razorpayProcess,
    TResult? Function(CashOnDeliveryEvent value)? cashOnDeliveryEvent,
    TResult? Function(GetRazorpayEvent value)? getRazorpay,
    TResult? Function(CancelOrderEvent value)? cancelOrderEvent,
    TResult? Function(ReturnOrderEvent value)? returnOrderEvent,
    TResult? Function(RatingProductEvent value)? ratingProductEvent,
    TResult? Function(SelectWalletEvent value)? selectWalletEvent,
  }) {
    return getRazorpay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCheckOutEvent value)? getCheckoutEvent,
    TResult Function(SelectPayementEvent value)? selectPayement,
    TResult Function(GetOrderEvent value)? getOrderEvent,
    TResult Function(RazorpayProcessEvent value)? razorpayProcess,
    TResult Function(CashOnDeliveryEvent value)? cashOnDeliveryEvent,
    TResult Function(GetRazorpayEvent value)? getRazorpay,
    TResult Function(CancelOrderEvent value)? cancelOrderEvent,
    TResult Function(ReturnOrderEvent value)? returnOrderEvent,
    TResult Function(RatingProductEvent value)? ratingProductEvent,
    TResult Function(SelectWalletEvent value)? selectWalletEvent,
    required TResult orElse(),
  }) {
    if (getRazorpay != null) {
      return getRazorpay(this);
    }
    return orElse();
  }
}

abstract class GetRazorpayEvent implements OrderEvent {
  const factory GetRazorpayEvent() = _$GetRazorpayEventImpl;
}

/// @nodoc
abstract class _$$CancelOrderEventImplCopyWith<$Res> {
  factory _$$CancelOrderEventImplCopyWith(_$CancelOrderEventImpl value,
          $Res Function(_$CancelOrderEventImpl) then) =
      __$$CancelOrderEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderQrrey orderQrrey});
}

/// @nodoc
class __$$CancelOrderEventImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$CancelOrderEventImpl>
    implements _$$CancelOrderEventImplCopyWith<$Res> {
  __$$CancelOrderEventImplCopyWithImpl(_$CancelOrderEventImpl _value,
      $Res Function(_$CancelOrderEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderQrrey = null,
  }) {
    return _then(_$CancelOrderEventImpl(
      orderQrrey: null == orderQrrey
          ? _value.orderQrrey
          : orderQrrey // ignore: cast_nullable_to_non_nullable
              as OrderQrrey,
    ));
  }
}

/// @nodoc

class _$CancelOrderEventImpl implements CancelOrderEvent {
  const _$CancelOrderEventImpl({required this.orderQrrey});

  @override
  final OrderQrrey orderQrrey;

  @override
  String toString() {
    return 'OrderEvent.cancelOrderEvent(orderQrrey: $orderQrrey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelOrderEventImpl &&
            (identical(other.orderQrrey, orderQrrey) ||
                other.orderQrrey == orderQrrey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderQrrey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelOrderEventImplCopyWith<_$CancelOrderEventImpl> get copyWith =>
      __$$CancelOrderEventImplCopyWithImpl<_$CancelOrderEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCheckoutEvent,
    required TResult Function(int selectPayementId) selectPayement,
    required TResult Function(GetOrderQurreyModel getOrderQurreyModel)
        getOrderEvent,
    required TResult Function(RazorpayProcesModel razorpayProcesModel)
        razorpayProcess,
    required TResult Function() cashOnDeliveryEvent,
    required TResult Function() getRazorpay,
    required TResult Function(OrderQrrey orderQrrey) cancelOrderEvent,
    required TResult Function(OrderQrrey orderQrrey) returnOrderEvent,
    required TResult Function(
            RatingModel ratingModel, RatingQurrey ratingQurrey)
        ratingProductEvent,
    required TResult Function() selectWalletEvent,
  }) {
    return cancelOrderEvent(orderQrrey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCheckoutEvent,
    TResult? Function(int selectPayementId)? selectPayement,
    TResult? Function(GetOrderQurreyModel getOrderQurreyModel)? getOrderEvent,
    TResult? Function(RazorpayProcesModel razorpayProcesModel)? razorpayProcess,
    TResult? Function()? cashOnDeliveryEvent,
    TResult? Function()? getRazorpay,
    TResult? Function(OrderQrrey orderQrrey)? cancelOrderEvent,
    TResult? Function(OrderQrrey orderQrrey)? returnOrderEvent,
    TResult? Function(RatingModel ratingModel, RatingQurrey ratingQurrey)?
        ratingProductEvent,
    TResult? Function()? selectWalletEvent,
  }) {
    return cancelOrderEvent?.call(orderQrrey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCheckoutEvent,
    TResult Function(int selectPayementId)? selectPayement,
    TResult Function(GetOrderQurreyModel getOrderQurreyModel)? getOrderEvent,
    TResult Function(RazorpayProcesModel razorpayProcesModel)? razorpayProcess,
    TResult Function()? cashOnDeliveryEvent,
    TResult Function()? getRazorpay,
    TResult Function(OrderQrrey orderQrrey)? cancelOrderEvent,
    TResult Function(OrderQrrey orderQrrey)? returnOrderEvent,
    TResult Function(RatingModel ratingModel, RatingQurrey ratingQurrey)?
        ratingProductEvent,
    TResult Function()? selectWalletEvent,
    required TResult orElse(),
  }) {
    if (cancelOrderEvent != null) {
      return cancelOrderEvent(orderQrrey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCheckOutEvent value) getCheckoutEvent,
    required TResult Function(SelectPayementEvent value) selectPayement,
    required TResult Function(GetOrderEvent value) getOrderEvent,
    required TResult Function(RazorpayProcessEvent value) razorpayProcess,
    required TResult Function(CashOnDeliveryEvent value) cashOnDeliveryEvent,
    required TResult Function(GetRazorpayEvent value) getRazorpay,
    required TResult Function(CancelOrderEvent value) cancelOrderEvent,
    required TResult Function(ReturnOrderEvent value) returnOrderEvent,
    required TResult Function(RatingProductEvent value) ratingProductEvent,
    required TResult Function(SelectWalletEvent value) selectWalletEvent,
  }) {
    return cancelOrderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCheckOutEvent value)? getCheckoutEvent,
    TResult? Function(SelectPayementEvent value)? selectPayement,
    TResult? Function(GetOrderEvent value)? getOrderEvent,
    TResult? Function(RazorpayProcessEvent value)? razorpayProcess,
    TResult? Function(CashOnDeliveryEvent value)? cashOnDeliveryEvent,
    TResult? Function(GetRazorpayEvent value)? getRazorpay,
    TResult? Function(CancelOrderEvent value)? cancelOrderEvent,
    TResult? Function(ReturnOrderEvent value)? returnOrderEvent,
    TResult? Function(RatingProductEvent value)? ratingProductEvent,
    TResult? Function(SelectWalletEvent value)? selectWalletEvent,
  }) {
    return cancelOrderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCheckOutEvent value)? getCheckoutEvent,
    TResult Function(SelectPayementEvent value)? selectPayement,
    TResult Function(GetOrderEvent value)? getOrderEvent,
    TResult Function(RazorpayProcessEvent value)? razorpayProcess,
    TResult Function(CashOnDeliveryEvent value)? cashOnDeliveryEvent,
    TResult Function(GetRazorpayEvent value)? getRazorpay,
    TResult Function(CancelOrderEvent value)? cancelOrderEvent,
    TResult Function(ReturnOrderEvent value)? returnOrderEvent,
    TResult Function(RatingProductEvent value)? ratingProductEvent,
    TResult Function(SelectWalletEvent value)? selectWalletEvent,
    required TResult orElse(),
  }) {
    if (cancelOrderEvent != null) {
      return cancelOrderEvent(this);
    }
    return orElse();
  }
}

abstract class CancelOrderEvent implements OrderEvent {
  const factory CancelOrderEvent({required final OrderQrrey orderQrrey}) =
      _$CancelOrderEventImpl;

  OrderQrrey get orderQrrey;
  @JsonKey(ignore: true)
  _$$CancelOrderEventImplCopyWith<_$CancelOrderEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReturnOrderEventImplCopyWith<$Res> {
  factory _$$ReturnOrderEventImplCopyWith(_$ReturnOrderEventImpl value,
          $Res Function(_$ReturnOrderEventImpl) then) =
      __$$ReturnOrderEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderQrrey orderQrrey});
}

/// @nodoc
class __$$ReturnOrderEventImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$ReturnOrderEventImpl>
    implements _$$ReturnOrderEventImplCopyWith<$Res> {
  __$$ReturnOrderEventImplCopyWithImpl(_$ReturnOrderEventImpl _value,
      $Res Function(_$ReturnOrderEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderQrrey = null,
  }) {
    return _then(_$ReturnOrderEventImpl(
      orderQrrey: null == orderQrrey
          ? _value.orderQrrey
          : orderQrrey // ignore: cast_nullable_to_non_nullable
              as OrderQrrey,
    ));
  }
}

/// @nodoc

class _$ReturnOrderEventImpl implements ReturnOrderEvent {
  const _$ReturnOrderEventImpl({required this.orderQrrey});

  @override
  final OrderQrrey orderQrrey;

  @override
  String toString() {
    return 'OrderEvent.returnOrderEvent(orderQrrey: $orderQrrey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnOrderEventImpl &&
            (identical(other.orderQrrey, orderQrrey) ||
                other.orderQrrey == orderQrrey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderQrrey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnOrderEventImplCopyWith<_$ReturnOrderEventImpl> get copyWith =>
      __$$ReturnOrderEventImplCopyWithImpl<_$ReturnOrderEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCheckoutEvent,
    required TResult Function(int selectPayementId) selectPayement,
    required TResult Function(GetOrderQurreyModel getOrderQurreyModel)
        getOrderEvent,
    required TResult Function(RazorpayProcesModel razorpayProcesModel)
        razorpayProcess,
    required TResult Function() cashOnDeliveryEvent,
    required TResult Function() getRazorpay,
    required TResult Function(OrderQrrey orderQrrey) cancelOrderEvent,
    required TResult Function(OrderQrrey orderQrrey) returnOrderEvent,
    required TResult Function(
            RatingModel ratingModel, RatingQurrey ratingQurrey)
        ratingProductEvent,
    required TResult Function() selectWalletEvent,
  }) {
    return returnOrderEvent(orderQrrey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCheckoutEvent,
    TResult? Function(int selectPayementId)? selectPayement,
    TResult? Function(GetOrderQurreyModel getOrderQurreyModel)? getOrderEvent,
    TResult? Function(RazorpayProcesModel razorpayProcesModel)? razorpayProcess,
    TResult? Function()? cashOnDeliveryEvent,
    TResult? Function()? getRazorpay,
    TResult? Function(OrderQrrey orderQrrey)? cancelOrderEvent,
    TResult? Function(OrderQrrey orderQrrey)? returnOrderEvent,
    TResult? Function(RatingModel ratingModel, RatingQurrey ratingQurrey)?
        ratingProductEvent,
    TResult? Function()? selectWalletEvent,
  }) {
    return returnOrderEvent?.call(orderQrrey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCheckoutEvent,
    TResult Function(int selectPayementId)? selectPayement,
    TResult Function(GetOrderQurreyModel getOrderQurreyModel)? getOrderEvent,
    TResult Function(RazorpayProcesModel razorpayProcesModel)? razorpayProcess,
    TResult Function()? cashOnDeliveryEvent,
    TResult Function()? getRazorpay,
    TResult Function(OrderQrrey orderQrrey)? cancelOrderEvent,
    TResult Function(OrderQrrey orderQrrey)? returnOrderEvent,
    TResult Function(RatingModel ratingModel, RatingQurrey ratingQurrey)?
        ratingProductEvent,
    TResult Function()? selectWalletEvent,
    required TResult orElse(),
  }) {
    if (returnOrderEvent != null) {
      return returnOrderEvent(orderQrrey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCheckOutEvent value) getCheckoutEvent,
    required TResult Function(SelectPayementEvent value) selectPayement,
    required TResult Function(GetOrderEvent value) getOrderEvent,
    required TResult Function(RazorpayProcessEvent value) razorpayProcess,
    required TResult Function(CashOnDeliveryEvent value) cashOnDeliveryEvent,
    required TResult Function(GetRazorpayEvent value) getRazorpay,
    required TResult Function(CancelOrderEvent value) cancelOrderEvent,
    required TResult Function(ReturnOrderEvent value) returnOrderEvent,
    required TResult Function(RatingProductEvent value) ratingProductEvent,
    required TResult Function(SelectWalletEvent value) selectWalletEvent,
  }) {
    return returnOrderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCheckOutEvent value)? getCheckoutEvent,
    TResult? Function(SelectPayementEvent value)? selectPayement,
    TResult? Function(GetOrderEvent value)? getOrderEvent,
    TResult? Function(RazorpayProcessEvent value)? razorpayProcess,
    TResult? Function(CashOnDeliveryEvent value)? cashOnDeliveryEvent,
    TResult? Function(GetRazorpayEvent value)? getRazorpay,
    TResult? Function(CancelOrderEvent value)? cancelOrderEvent,
    TResult? Function(ReturnOrderEvent value)? returnOrderEvent,
    TResult? Function(RatingProductEvent value)? ratingProductEvent,
    TResult? Function(SelectWalletEvent value)? selectWalletEvent,
  }) {
    return returnOrderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCheckOutEvent value)? getCheckoutEvent,
    TResult Function(SelectPayementEvent value)? selectPayement,
    TResult Function(GetOrderEvent value)? getOrderEvent,
    TResult Function(RazorpayProcessEvent value)? razorpayProcess,
    TResult Function(CashOnDeliveryEvent value)? cashOnDeliveryEvent,
    TResult Function(GetRazorpayEvent value)? getRazorpay,
    TResult Function(CancelOrderEvent value)? cancelOrderEvent,
    TResult Function(ReturnOrderEvent value)? returnOrderEvent,
    TResult Function(RatingProductEvent value)? ratingProductEvent,
    TResult Function(SelectWalletEvent value)? selectWalletEvent,
    required TResult orElse(),
  }) {
    if (returnOrderEvent != null) {
      return returnOrderEvent(this);
    }
    return orElse();
  }
}

abstract class ReturnOrderEvent implements OrderEvent {
  const factory ReturnOrderEvent({required final OrderQrrey orderQrrey}) =
      _$ReturnOrderEventImpl;

  OrderQrrey get orderQrrey;
  @JsonKey(ignore: true)
  _$$ReturnOrderEventImplCopyWith<_$ReturnOrderEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RatingProductEventImplCopyWith<$Res> {
  factory _$$RatingProductEventImplCopyWith(_$RatingProductEventImpl value,
          $Res Function(_$RatingProductEventImpl) then) =
      __$$RatingProductEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RatingModel ratingModel, RatingQurrey ratingQurrey});
}

/// @nodoc
class __$$RatingProductEventImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$RatingProductEventImpl>
    implements _$$RatingProductEventImplCopyWith<$Res> {
  __$$RatingProductEventImplCopyWithImpl(_$RatingProductEventImpl _value,
      $Res Function(_$RatingProductEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ratingModel = null,
    Object? ratingQurrey = null,
  }) {
    return _then(_$RatingProductEventImpl(
      ratingModel: null == ratingModel
          ? _value.ratingModel
          : ratingModel // ignore: cast_nullable_to_non_nullable
              as RatingModel,
      ratingQurrey: null == ratingQurrey
          ? _value.ratingQurrey
          : ratingQurrey // ignore: cast_nullable_to_non_nullable
              as RatingQurrey,
    ));
  }
}

/// @nodoc

class _$RatingProductEventImpl implements RatingProductEvent {
  const _$RatingProductEventImpl(
      {required this.ratingModel, required this.ratingQurrey});

  @override
  final RatingModel ratingModel;
  @override
  final RatingQurrey ratingQurrey;

  @override
  String toString() {
    return 'OrderEvent.ratingProductEvent(ratingModel: $ratingModel, ratingQurrey: $ratingQurrey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingProductEventImpl &&
            (identical(other.ratingModel, ratingModel) ||
                other.ratingModel == ratingModel) &&
            (identical(other.ratingQurrey, ratingQurrey) ||
                other.ratingQurrey == ratingQurrey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ratingModel, ratingQurrey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingProductEventImplCopyWith<_$RatingProductEventImpl> get copyWith =>
      __$$RatingProductEventImplCopyWithImpl<_$RatingProductEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCheckoutEvent,
    required TResult Function(int selectPayementId) selectPayement,
    required TResult Function(GetOrderQurreyModel getOrderQurreyModel)
        getOrderEvent,
    required TResult Function(RazorpayProcesModel razorpayProcesModel)
        razorpayProcess,
    required TResult Function() cashOnDeliveryEvent,
    required TResult Function() getRazorpay,
    required TResult Function(OrderQrrey orderQrrey) cancelOrderEvent,
    required TResult Function(OrderQrrey orderQrrey) returnOrderEvent,
    required TResult Function(
            RatingModel ratingModel, RatingQurrey ratingQurrey)
        ratingProductEvent,
    required TResult Function() selectWalletEvent,
  }) {
    return ratingProductEvent(ratingModel, ratingQurrey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCheckoutEvent,
    TResult? Function(int selectPayementId)? selectPayement,
    TResult? Function(GetOrderQurreyModel getOrderQurreyModel)? getOrderEvent,
    TResult? Function(RazorpayProcesModel razorpayProcesModel)? razorpayProcess,
    TResult? Function()? cashOnDeliveryEvent,
    TResult? Function()? getRazorpay,
    TResult? Function(OrderQrrey orderQrrey)? cancelOrderEvent,
    TResult? Function(OrderQrrey orderQrrey)? returnOrderEvent,
    TResult? Function(RatingModel ratingModel, RatingQurrey ratingQurrey)?
        ratingProductEvent,
    TResult? Function()? selectWalletEvent,
  }) {
    return ratingProductEvent?.call(ratingModel, ratingQurrey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCheckoutEvent,
    TResult Function(int selectPayementId)? selectPayement,
    TResult Function(GetOrderQurreyModel getOrderQurreyModel)? getOrderEvent,
    TResult Function(RazorpayProcesModel razorpayProcesModel)? razorpayProcess,
    TResult Function()? cashOnDeliveryEvent,
    TResult Function()? getRazorpay,
    TResult Function(OrderQrrey orderQrrey)? cancelOrderEvent,
    TResult Function(OrderQrrey orderQrrey)? returnOrderEvent,
    TResult Function(RatingModel ratingModel, RatingQurrey ratingQurrey)?
        ratingProductEvent,
    TResult Function()? selectWalletEvent,
    required TResult orElse(),
  }) {
    if (ratingProductEvent != null) {
      return ratingProductEvent(ratingModel, ratingQurrey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCheckOutEvent value) getCheckoutEvent,
    required TResult Function(SelectPayementEvent value) selectPayement,
    required TResult Function(GetOrderEvent value) getOrderEvent,
    required TResult Function(RazorpayProcessEvent value) razorpayProcess,
    required TResult Function(CashOnDeliveryEvent value) cashOnDeliveryEvent,
    required TResult Function(GetRazorpayEvent value) getRazorpay,
    required TResult Function(CancelOrderEvent value) cancelOrderEvent,
    required TResult Function(ReturnOrderEvent value) returnOrderEvent,
    required TResult Function(RatingProductEvent value) ratingProductEvent,
    required TResult Function(SelectWalletEvent value) selectWalletEvent,
  }) {
    return ratingProductEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCheckOutEvent value)? getCheckoutEvent,
    TResult? Function(SelectPayementEvent value)? selectPayement,
    TResult? Function(GetOrderEvent value)? getOrderEvent,
    TResult? Function(RazorpayProcessEvent value)? razorpayProcess,
    TResult? Function(CashOnDeliveryEvent value)? cashOnDeliveryEvent,
    TResult? Function(GetRazorpayEvent value)? getRazorpay,
    TResult? Function(CancelOrderEvent value)? cancelOrderEvent,
    TResult? Function(ReturnOrderEvent value)? returnOrderEvent,
    TResult? Function(RatingProductEvent value)? ratingProductEvent,
    TResult? Function(SelectWalletEvent value)? selectWalletEvent,
  }) {
    return ratingProductEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCheckOutEvent value)? getCheckoutEvent,
    TResult Function(SelectPayementEvent value)? selectPayement,
    TResult Function(GetOrderEvent value)? getOrderEvent,
    TResult Function(RazorpayProcessEvent value)? razorpayProcess,
    TResult Function(CashOnDeliveryEvent value)? cashOnDeliveryEvent,
    TResult Function(GetRazorpayEvent value)? getRazorpay,
    TResult Function(CancelOrderEvent value)? cancelOrderEvent,
    TResult Function(ReturnOrderEvent value)? returnOrderEvent,
    TResult Function(RatingProductEvent value)? ratingProductEvent,
    TResult Function(SelectWalletEvent value)? selectWalletEvent,
    required TResult orElse(),
  }) {
    if (ratingProductEvent != null) {
      return ratingProductEvent(this);
    }
    return orElse();
  }
}

abstract class RatingProductEvent implements OrderEvent {
  const factory RatingProductEvent(
      {required final RatingModel ratingModel,
      required final RatingQurrey ratingQurrey}) = _$RatingProductEventImpl;

  RatingModel get ratingModel;
  RatingQurrey get ratingQurrey;
  @JsonKey(ignore: true)
  _$$RatingProductEventImplCopyWith<_$RatingProductEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectWalletEventImplCopyWith<$Res> {
  factory _$$SelectWalletEventImplCopyWith(_$SelectWalletEventImpl value,
          $Res Function(_$SelectWalletEventImpl) then) =
      __$$SelectWalletEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectWalletEventImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$SelectWalletEventImpl>
    implements _$$SelectWalletEventImplCopyWith<$Res> {
  __$$SelectWalletEventImplCopyWithImpl(_$SelectWalletEventImpl _value,
      $Res Function(_$SelectWalletEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SelectWalletEventImpl implements SelectWalletEvent {
  const _$SelectWalletEventImpl();

  @override
  String toString() {
    return 'OrderEvent.selectWalletEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SelectWalletEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCheckoutEvent,
    required TResult Function(int selectPayementId) selectPayement,
    required TResult Function(GetOrderQurreyModel getOrderQurreyModel)
        getOrderEvent,
    required TResult Function(RazorpayProcesModel razorpayProcesModel)
        razorpayProcess,
    required TResult Function() cashOnDeliveryEvent,
    required TResult Function() getRazorpay,
    required TResult Function(OrderQrrey orderQrrey) cancelOrderEvent,
    required TResult Function(OrderQrrey orderQrrey) returnOrderEvent,
    required TResult Function(
            RatingModel ratingModel, RatingQurrey ratingQurrey)
        ratingProductEvent,
    required TResult Function() selectWalletEvent,
  }) {
    return selectWalletEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCheckoutEvent,
    TResult? Function(int selectPayementId)? selectPayement,
    TResult? Function(GetOrderQurreyModel getOrderQurreyModel)? getOrderEvent,
    TResult? Function(RazorpayProcesModel razorpayProcesModel)? razorpayProcess,
    TResult? Function()? cashOnDeliveryEvent,
    TResult? Function()? getRazorpay,
    TResult? Function(OrderQrrey orderQrrey)? cancelOrderEvent,
    TResult? Function(OrderQrrey orderQrrey)? returnOrderEvent,
    TResult? Function(RatingModel ratingModel, RatingQurrey ratingQurrey)?
        ratingProductEvent,
    TResult? Function()? selectWalletEvent,
  }) {
    return selectWalletEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCheckoutEvent,
    TResult Function(int selectPayementId)? selectPayement,
    TResult Function(GetOrderQurreyModel getOrderQurreyModel)? getOrderEvent,
    TResult Function(RazorpayProcesModel razorpayProcesModel)? razorpayProcess,
    TResult Function()? cashOnDeliveryEvent,
    TResult Function()? getRazorpay,
    TResult Function(OrderQrrey orderQrrey)? cancelOrderEvent,
    TResult Function(OrderQrrey orderQrrey)? returnOrderEvent,
    TResult Function(RatingModel ratingModel, RatingQurrey ratingQurrey)?
        ratingProductEvent,
    TResult Function()? selectWalletEvent,
    required TResult orElse(),
  }) {
    if (selectWalletEvent != null) {
      return selectWalletEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCheckOutEvent value) getCheckoutEvent,
    required TResult Function(SelectPayementEvent value) selectPayement,
    required TResult Function(GetOrderEvent value) getOrderEvent,
    required TResult Function(RazorpayProcessEvent value) razorpayProcess,
    required TResult Function(CashOnDeliveryEvent value) cashOnDeliveryEvent,
    required TResult Function(GetRazorpayEvent value) getRazorpay,
    required TResult Function(CancelOrderEvent value) cancelOrderEvent,
    required TResult Function(ReturnOrderEvent value) returnOrderEvent,
    required TResult Function(RatingProductEvent value) ratingProductEvent,
    required TResult Function(SelectWalletEvent value) selectWalletEvent,
  }) {
    return selectWalletEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCheckOutEvent value)? getCheckoutEvent,
    TResult? Function(SelectPayementEvent value)? selectPayement,
    TResult? Function(GetOrderEvent value)? getOrderEvent,
    TResult? Function(RazorpayProcessEvent value)? razorpayProcess,
    TResult? Function(CashOnDeliveryEvent value)? cashOnDeliveryEvent,
    TResult? Function(GetRazorpayEvent value)? getRazorpay,
    TResult? Function(CancelOrderEvent value)? cancelOrderEvent,
    TResult? Function(ReturnOrderEvent value)? returnOrderEvent,
    TResult? Function(RatingProductEvent value)? ratingProductEvent,
    TResult? Function(SelectWalletEvent value)? selectWalletEvent,
  }) {
    return selectWalletEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCheckOutEvent value)? getCheckoutEvent,
    TResult Function(SelectPayementEvent value)? selectPayement,
    TResult Function(GetOrderEvent value)? getOrderEvent,
    TResult Function(RazorpayProcessEvent value)? razorpayProcess,
    TResult Function(CashOnDeliveryEvent value)? cashOnDeliveryEvent,
    TResult Function(GetRazorpayEvent value)? getRazorpay,
    TResult Function(CancelOrderEvent value)? cancelOrderEvent,
    TResult Function(ReturnOrderEvent value)? returnOrderEvent,
    TResult Function(RatingProductEvent value)? ratingProductEvent,
    TResult Function(SelectWalletEvent value)? selectWalletEvent,
    required TResult orElse(),
  }) {
    if (selectWalletEvent != null) {
      return selectWalletEvent(this);
    }
    return orElse();
  }
}

abstract class SelectWalletEvent implements OrderEvent {
  const factory SelectWalletEvent() = _$SelectWalletEventImpl;
}

/// @nodoc
mixin _$OrderState {
  bool get hasError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showAnimation => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get errorMsg => throw _privateConstructorUsedError;
  int? get selectPayementId => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get orderId => throw _privateConstructorUsedError;
  CheckoutModel? get checkoutModel => throw _privateConstructorUsedError;
  RazorpayProcessResp? get razorpayProcessResp =>
      throw _privateConstructorUsedError;
  RazorPayModel? get razor => throw _privateConstructorUsedError;
  SuccessRespModel? get successRespModel => throw _privateConstructorUsedError;
  GetRatingModel? get getRatingModel => throw _privateConstructorUsedError;
  GetOrderModel? get getOrderModel => throw _privateConstructorUsedError;
  SelectWalletResp? get selectWalletResp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderStateCopyWith<OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
  @useResult
  $Res call(
      {bool hasError,
      bool isLoading,
      bool showAnimation,
      bool isDone,
      String? message,
      String? errorMsg,
      int? selectPayementId,
      int? id,
      String? orderId,
      CheckoutModel? checkoutModel,
      RazorpayProcessResp? razorpayProcessResp,
      RazorPayModel? razor,
      SuccessRespModel? successRespModel,
      GetRatingModel? getRatingModel,
      GetOrderModel? getOrderModel,
      SelectWalletResp? selectWalletResp});
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasError = null,
    Object? isLoading = null,
    Object? showAnimation = null,
    Object? isDone = null,
    Object? message = freezed,
    Object? errorMsg = freezed,
    Object? selectPayementId = freezed,
    Object? id = freezed,
    Object? orderId = freezed,
    Object? checkoutModel = freezed,
    Object? razorpayProcessResp = freezed,
    Object? razor = freezed,
    Object? successRespModel = freezed,
    Object? getRatingModel = freezed,
    Object? getOrderModel = freezed,
    Object? selectWalletResp = freezed,
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
      showAnimation: null == showAnimation
          ? _value.showAnimation
          : showAnimation // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      selectPayementId: freezed == selectPayementId
          ? _value.selectPayementId
          : selectPayementId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      checkoutModel: freezed == checkoutModel
          ? _value.checkoutModel
          : checkoutModel // ignore: cast_nullable_to_non_nullable
              as CheckoutModel?,
      razorpayProcessResp: freezed == razorpayProcessResp
          ? _value.razorpayProcessResp
          : razorpayProcessResp // ignore: cast_nullable_to_non_nullable
              as RazorpayProcessResp?,
      razor: freezed == razor
          ? _value.razor
          : razor // ignore: cast_nullable_to_non_nullable
              as RazorPayModel?,
      successRespModel: freezed == successRespModel
          ? _value.successRespModel
          : successRespModel // ignore: cast_nullable_to_non_nullable
              as SuccessRespModel?,
      getRatingModel: freezed == getRatingModel
          ? _value.getRatingModel
          : getRatingModel // ignore: cast_nullable_to_non_nullable
              as GetRatingModel?,
      getOrderModel: freezed == getOrderModel
          ? _value.getOrderModel
          : getOrderModel // ignore: cast_nullable_to_non_nullable
              as GetOrderModel?,
      selectWalletResp: freezed == selectWalletResp
          ? _value.selectWalletResp
          : selectWalletResp // ignore: cast_nullable_to_non_nullable
              as SelectWalletResp?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool hasError,
      bool isLoading,
      bool showAnimation,
      bool isDone,
      String? message,
      String? errorMsg,
      int? selectPayementId,
      int? id,
      String? orderId,
      CheckoutModel? checkoutModel,
      RazorpayProcessResp? razorpayProcessResp,
      RazorPayModel? razor,
      SuccessRespModel? successRespModel,
      GetRatingModel? getRatingModel,
      GetOrderModel? getOrderModel,
      SelectWalletResp? selectWalletResp});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasError = null,
    Object? isLoading = null,
    Object? showAnimation = null,
    Object? isDone = null,
    Object? message = freezed,
    Object? errorMsg = freezed,
    Object? selectPayementId = freezed,
    Object? id = freezed,
    Object? orderId = freezed,
    Object? checkoutModel = freezed,
    Object? razorpayProcessResp = freezed,
    Object? razor = freezed,
    Object? successRespModel = freezed,
    Object? getRatingModel = freezed,
    Object? getOrderModel = freezed,
    Object? selectWalletResp = freezed,
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
      showAnimation: null == showAnimation
          ? _value.showAnimation
          : showAnimation // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      selectPayementId: freezed == selectPayementId
          ? _value.selectPayementId
          : selectPayementId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      checkoutModel: freezed == checkoutModel
          ? _value.checkoutModel
          : checkoutModel // ignore: cast_nullable_to_non_nullable
              as CheckoutModel?,
      razorpayProcessResp: freezed == razorpayProcessResp
          ? _value.razorpayProcessResp
          : razorpayProcessResp // ignore: cast_nullable_to_non_nullable
              as RazorpayProcessResp?,
      razor: freezed == razor
          ? _value.razor
          : razor // ignore: cast_nullable_to_non_nullable
              as RazorPayModel?,
      successRespModel: freezed == successRespModel
          ? _value.successRespModel
          : successRespModel // ignore: cast_nullable_to_non_nullable
              as SuccessRespModel?,
      getRatingModel: freezed == getRatingModel
          ? _value.getRatingModel
          : getRatingModel // ignore: cast_nullable_to_non_nullable
              as GetRatingModel?,
      getOrderModel: freezed == getOrderModel
          ? _value.getOrderModel
          : getOrderModel // ignore: cast_nullable_to_non_nullable
              as GetOrderModel?,
      selectWalletResp: freezed == selectWalletResp
          ? _value.selectWalletResp
          : selectWalletResp // ignore: cast_nullable_to_non_nullable
              as SelectWalletResp?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.hasError,
      required this.isLoading,
      required this.showAnimation,
      required this.isDone,
      this.message,
      this.errorMsg,
      this.selectPayementId,
      this.id,
      this.orderId,
      this.checkoutModel,
      this.razorpayProcessResp,
      this.razor,
      this.successRespModel,
      this.getRatingModel,
      this.getOrderModel,
      this.selectWalletResp});

  @override
  final bool hasError;
  @override
  final bool isLoading;
  @override
  final bool showAnimation;
  @override
  final bool isDone;
  @override
  final String? message;
  @override
  final String? errorMsg;
  @override
  final int? selectPayementId;
  @override
  final int? id;
  @override
  final String? orderId;
  @override
  final CheckoutModel? checkoutModel;
  @override
  final RazorpayProcessResp? razorpayProcessResp;
  @override
  final RazorPayModel? razor;
  @override
  final SuccessRespModel? successRespModel;
  @override
  final GetRatingModel? getRatingModel;
  @override
  final GetOrderModel? getOrderModel;
  @override
  final SelectWalletResp? selectWalletResp;

  @override
  String toString() {
    return 'OrderState(hasError: $hasError, isLoading: $isLoading, showAnimation: $showAnimation, isDone: $isDone, message: $message, errorMsg: $errorMsg, selectPayementId: $selectPayementId, id: $id, orderId: $orderId, checkoutModel: $checkoutModel, razorpayProcessResp: $razorpayProcessResp, razor: $razor, successRespModel: $successRespModel, getRatingModel: $getRatingModel, getOrderModel: $getOrderModel, selectWalletResp: $selectWalletResp)';
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
            (identical(other.showAnimation, showAnimation) ||
                other.showAnimation == showAnimation) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            (identical(other.selectPayementId, selectPayementId) ||
                other.selectPayementId == selectPayementId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.checkoutModel, checkoutModel) ||
                other.checkoutModel == checkoutModel) &&
            (identical(other.razorpayProcessResp, razorpayProcessResp) ||
                other.razorpayProcessResp == razorpayProcessResp) &&
            (identical(other.razor, razor) || other.razor == razor) &&
            (identical(other.successRespModel, successRespModel) ||
                other.successRespModel == successRespModel) &&
            (identical(other.getRatingModel, getRatingModel) ||
                other.getRatingModel == getRatingModel) &&
            (identical(other.getOrderModel, getOrderModel) ||
                other.getOrderModel == getOrderModel) &&
            (identical(other.selectWalletResp, selectWalletResp) ||
                other.selectWalletResp == selectWalletResp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      hasError,
      isLoading,
      showAnimation,
      isDone,
      message,
      errorMsg,
      selectPayementId,
      id,
      orderId,
      checkoutModel,
      razorpayProcessResp,
      razor,
      successRespModel,
      getRatingModel,
      getOrderModel,
      selectWalletResp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements OrderState {
  const factory _Initial(
      {required final bool hasError,
      required final bool isLoading,
      required final bool showAnimation,
      required final bool isDone,
      final String? message,
      final String? errorMsg,
      final int? selectPayementId,
      final int? id,
      final String? orderId,
      final CheckoutModel? checkoutModel,
      final RazorpayProcessResp? razorpayProcessResp,
      final RazorPayModel? razor,
      final SuccessRespModel? successRespModel,
      final GetRatingModel? getRatingModel,
      final GetOrderModel? getOrderModel,
      final SelectWalletResp? selectWalletResp}) = _$InitialImpl;

  @override
  bool get hasError;
  @override
  bool get isLoading;
  @override
  bool get showAnimation;
  @override
  bool get isDone;
  @override
  String? get message;
  @override
  String? get errorMsg;
  @override
  int? get selectPayementId;
  @override
  int? get id;
  @override
  String? get orderId;
  @override
  CheckoutModel? get checkoutModel;
  @override
  RazorpayProcessResp? get razorpayProcessResp;
  @override
  RazorPayModel? get razor;
  @override
  SuccessRespModel? get successRespModel;
  @override
  GetRatingModel? get getRatingModel;
  @override
  GetOrderModel? get getOrderModel;
  @override
  SelectWalletResp? get selectWalletResp;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
