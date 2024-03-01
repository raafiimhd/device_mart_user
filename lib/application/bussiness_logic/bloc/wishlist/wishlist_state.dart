part of 'wishlist_bloc.dart';

@freezed
class WishlistState with _$WishlistState {
  const factory WishlistState(
      {required bool isLoading,
      required bool hasError,
      required bool isDone,
      String? message,
      GetWishlistRespModel? getWishlistRespModel,
      AddRemoveWishlistResp? addRemoveWishlistResp}) = _initial;
  factory WishlistState.initial() =>
      const WishlistState(isLoading: false, hasError: false, isDone: false);
}
