part of 'wishlist_bloc.dart';

@freezed
class WishlistEvent with _$WishlistEvent {
  const factory WishlistEvent.getWishlistEvent(
          {required GetWishlistQurreyModel getWishlistQurreyModel}) =
      GetWishlistEvent;
  const factory WishlistEvent.addWishlistEvent({required int id}) =
      AddWishlistEvent;
  const factory WishlistEvent.removeWhislitEvent({required int id}) =
      RemoveWishlistEvent;
}
