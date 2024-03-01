part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState(
      {required bool hasError,
      required bool isLoading,
      required bool showAnimation,
      required bool isDone,
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
      SelectWalletResp? selectWalletResp,
      }) = _Initial;

  factory OrderState.initial() =>
      const OrderState(hasError: false, isLoading: false, showAnimation: false,isDone: false);
}
