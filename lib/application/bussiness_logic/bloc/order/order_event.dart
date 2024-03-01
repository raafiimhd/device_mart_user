part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.getCheckoutEvent() = GetCheckOutEvent;
  const factory OrderEvent.selectPayement({required int selectPayementId}) =
      SelectPayementEvent;
  const factory OrderEvent.getOrderEvent(
      {required GetOrderQurreyModel getOrderQurreyModel}) = GetOrderEvent;
  const factory OrderEvent.razorpayProcess(
          {required RazorpayProcesModel razorpayProcesModel}) =
      RazorpayProcessEvent;
  const factory OrderEvent.cashOnDeliveryEvent() = CashOnDeliveryEvent;
  const factory OrderEvent.getRazorpay() = GetRazorpayEvent;
  const factory OrderEvent.cancelOrderEvent({required OrderQrrey orderQrrey}) =
      CancelOrderEvent;
  const factory OrderEvent.returnOrderEvent({required OrderQrrey orderQrrey}) =
      ReturnOrderEvent;
  const factory OrderEvent.ratingProductEvent(
      {required RatingModel ratingModel,
      required RatingQurrey ratingQurrey}) = RatingProductEvent;
  const factory OrderEvent.selectWalletEvent() = SelectWalletEvent;
  
}
