import 'package:bloc/bloc.dart';
import 'package:device/domain/models/cart_and_coupon/add_cart_model/add_cart_qurrey_model.dart';
import 'package:device/domain/models/cart_and_coupon/add_cart_model/add_cart_resp_model.dart';
import 'package:device/domain/models/cart_and_coupon/coupon/apply_coupon/apply_coupon.dart';
import 'package:device/domain/models/cart_and_coupon/coupon/apply_coupon/apply_coupon_resp.dart';
import 'package:device/domain/models/cart_and_coupon/coupon/get_coupon_model/get_coupon_model.dart';
import 'package:device/domain/models/cart_and_coupon/coupon/get_coupon_model/get_coupon_resp_model.dart';
import 'package:device/domain/models/cart_and_coupon/get_cart_model/get_cart_model.dart';
import 'package:device/domain/models/cart_and_coupon/get_cart_model/get_cart_qurrey_model.dart';
import 'package:device/domain/models/cart_and_coupon/get_cart_model/get_cart_resp_model.dart';
import 'package:device/domain/models/cart_and_coupon/get_cart_model/get_items_model.dart';
import 'package:device/domain/models/cart_and_coupon/increment_and_decrement_qurrey/inc_and_dec_resp_model.dart';
import 'package:device/domain/models/cart_and_coupon/increment_and_decrement_qurrey/increment_and_decrement_qurrey.dart';
import 'package:device/domain/models/cart_and_coupon/remove_cart_model/remove_cart_model.dart';
import 'package:device/domain/models/cart_and_coupon/remove_cart_model/remove_cart_resp_model.dart';
import 'package:device/domain/repositery/cart_repository/cart_repositery.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepositery cartRepositery;
  int usedCouponId = 0;

  CartBloc(this.cartRepositery) : super(CartState.inital()) {
    on<GetCartEvent>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        hasError: false,
        quantityIndicator: false,
        isDone: false,
      ));

      final result = await cartRepositery.getCart(
        getCartQurreyModel: event.getCartQurreyModel,
      );

      result.fold(
        (failure) {
          emit(
            state.copyWith(
              hasError: true,
              isLoading: false,
              message: failure.message,
            ),
          );
        },
        (resp) {
          Map<int, int> map = {};
          int bagTotal = 0;

          if (resp.data!.items != null) {
            map = setQuantity(resp.data!.items!);

            for (var item in resp.data!.items!) {
              bagTotal += item.qty! * item.price!;
            }
          }

          emit(
            state.copyWith(
              isLoading: false,
              message: resp.message,
              hasError: false,
              cartItems: map,
              bugTotal: bagTotal,
              discount: state.discount,
              getCartRespModel: resp,
            ),
          );
        },
      );
    });

    on<AddCartEvent>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        hasError: false,
        isDone: false,
        quantityIndicator: false,
      ));

      final result = await cartRepositery.addCart(
        addCartQurreyModel: AddCartQurreyModel(id: event.id),
      );

      result.fold(
        (failure) => emit(
          state.copyWith(
            hasError: true,
            message: failure.message,
            isLoading: false,
          ),
        ),
        (resp) {
          Map<int, int> map = Map.from(state.cartItems);
          map[event.id] = 1;

          emit(
            state.copyWith(
              hasError: false,
              isLoading: false,
              cartItems: map,
              isDone: true,
              addCartRespModel: resp,
              message: resp.message,
            ),
          );

          add(
            GetCartEvent(
              getCartQurreyModel: GetCartQurreyModel(page: 1, count: 30),
            ),
          );
        },
      );
    });
    on<RemoveCartEvent>((event, emit) async {
      emit(state.copyWith(
          hasError: false, quantityIndicator: false, isDone: false));

      final result = await cartRepositery.removeCart(
          removeCartModel: RemoveCartModel(id: event.id));
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true,
              message: 'something went wrong, please try again')), (resp) {
        emit(state.copyWith(
            message: 'successfully removed from cart',
            isDone: true,
            hasError: false));
        add(GetCartEvent(
            getCartQurreyModel: GetCartQurreyModel(page: 1, count: 30)));
      });
    });
    on<CartIncrementQuntityEvent>((event, emit) async {
      final result = await cartRepositery.incrementCart(
        incrementAndDecrementQurrey: IncrementAndDecrementQurrey(id: event.id),
      );

      result.fold(
        (failure) => emit(
          state.copyWith(
            hasError: true,
            message: failure.message,
          ),
        ),
        (resp) {
          Map<int, int> map = Map.from(state.cartItems);
          map[event.id] = map[event.id]! + 1;
          final item = state.getCartRespModel!.data!.items!
              .firstWhere((item) => item.productId == event.id);
          int updatedTotal = state.bugTotal! + item.price!;

          emit(
            state.copyWith(
              hasError: false,
              message: resp.message,
              quantityIndicator: true,
              bugTotal: updatedTotal,
              cartItems: map,
            ),
          );
        },
      );
    });

    on<CartDecrementQuntityEvent>((event, emit) async {
      if (state.cartItems[event.id] == 1) {
        add(CartEvent.removeCartEvent(id: event.id));
        return;
      }

      final result = await cartRepositery.decrementCart(
        incrementAndDecrementQurrey: IncrementAndDecrementQurrey(id: event.id),
      );

      result.fold(
        (failure) => null,
        (resp) {
          Map<int, int> map = Map.from(state.cartItems);
          map[event.id] = map[event.id]! - 1;

          final item = state.getCartRespModel!.data!.items!
              .firstWhere((item) => item.productId == event.id);
          int updatedTotal = state.bugTotal! - item.price!;

          emit(
            state.copyWith(
              quantityIndicator: true,
              cartItems: map,
              bugTotal: updatedTotal,
            ),
          );
        },
      );
    });

    on<GetCouponEvent>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, hasError: false, quantityIndicator: false));
      final result = await cartRepositery.getCoupon();
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true,
              message: 'Coupon is not available or Referesh your screen',
              isLoading: false)), (resp) {
        emit(state.copyWith(
            isLoading: false, coupon: resp.data!, hasError: false));
        add(GetCartEvent(
            getCartQurreyModel: GetCartQurreyModel(page: 1, count: 30)));
      });
    });
    on<ApplyCouponEvent>((event, emit) async {
      usedCouponId = event.getCouponModel.id!;
      int maxDiscountAmount = event.getCouponModel.discountMaxAmount!;
      int discountedAmount =
          (state.bugTotal! * (100 - event.getCouponModel.discountPer!) ~/ 100)
              .clamp(0, maxDiscountAmount);

      int newTotal = state.bugTotal! - discountedAmount;
      final result = await cartRepositery.applyCoupon(
          applyCouponModel: ApplyCouponModel(code: event.getCouponModel.code));
      result.fold(
          (l) => emit(state.copyWith(hasError: true, message: l.message)), (r) {
        emit(state.copyWith(
            applyCouponRespModel: r,
            bugTotal: newTotal,
            discount: discountedAmount,
            message: r.message,
            hasError: false));
      });
    });

  }

  Map<int, int> setQuantity(List<Items> items) {
    Map<int, int> map = {};
    for (var item in items) {
      map[item.productId!] = item.qty!;
    }
    return map;
  }
}
