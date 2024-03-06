part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState(
      {required bool isLoading,
      required bool hasError,
      required bool quantityIndicator,
      required bool isCoupon,
      required bool isCouponsFetched,
      required Map<int, int> cartItems,
      required bool isDone,
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
      List<GetCouponModel>? coupon,
      }) = _Initial;

  factory CartState.inital() => const CartState(
      isLoading: false,
      isCoupon: false,
      hasError: false,
      cartItems: {},
      isCouponsFetched: false,
      quantityIndicator: false,
      isDone: false);
}
