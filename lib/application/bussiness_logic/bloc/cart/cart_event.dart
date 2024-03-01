part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.getCartEvent(
      {required GetCartQurreyModel getCartQurreyModel}) = GetCartEvent;
  const factory CartEvent.addCartEvent({required int id}) = AddCartEvent;
  const factory CartEvent.removeCartEvent({required int id}) = RemoveCartEvent;
  const factory CartEvent.cartIncrementEvent({required int id}) =
      CartIncrementQuntityEvent;
  const factory CartEvent.cartDecrementEvent({required int id}) =
      CartDecrementQuntityEvent;
  const factory CartEvent.getCouponEvent() = GetCouponEvent;
  const factory CartEvent.applyCouponEvent(
      {required GetCouponModel getCouponModel}) = ApplyCouponEvent;
}
