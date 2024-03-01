import 'package:bloc/bloc.dart';
import 'package:device/domain/models/wishlist_models/add_remove_wishlist/add_remove_wishlist_qurrey_model/add_remove_wishlist_qurrey_model.dart';
import 'package:device/domain/models/wishlist_models/add_remove_wishlist/add_remove_wishlist_resp/add_remove_wishlist_resp.dart';
import 'package:device/domain/models/wishlist_models/get_wishlist/get_wishlist_qurrey_model/get_wishlist_qurrey_model.dart';
import 'package:device/domain/models/wishlist_models/get_wishlist/get_wishlist_resp_model/get_wishlist_resp_model.dart';
import 'package:device/domain/repositery/wishlist_repositery/wishlist_repositery.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';
part 'wishlist_bloc.freezed.dart';

@injectable
class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  final WishlistRepositery wishlistRepositery;
  WishlistBloc(this.wishlistRepositery) : super(WishlistState.initial()) {
    on<GetWishlistEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await wishlistRepositery.getWishlist(
          getWishlistQurreyModel: event.getWishlistQurreyModel);

      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true, isLoading: false, message: failure.message)),
          (resp) => emit(state.copyWith(
              hasError: false,
              message: resp.message,
              isLoading: false,
              getWishlistRespModel: resp)));
    });
    on<AddWishlistEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true, isDone: false));
      final result = await wishlistRepositery.addWishlist(
          addRemoveWishlistQurreyModel:
              AddRemoveWishlistQurreyModel(id: event.id));
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true,
              isLoading: false,
              message: failure.message)), (resp) {
        emit(state.copyWith(
            hasError: false,
            isDone: true,
            message: resp.message,
            addRemoveWishlistResp: resp));
        add(WishlistEvent.getWishlistEvent(
            getWishlistQurreyModel:
                GetWishlistQurreyModel(page: 1, count: 30)));
      });
    });

    on<RemoveWishlistEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true, isDone: false));
      final result = await wishlistRepositery.removeWishlist(
          removeWishlistEvent: RemoveWishlistEvent(id: event.id));
      result.fold(
          (failure) => emit(state.copyWith(
                hasError: true,
                isLoading: false,
                message: failure.message,
              )), (resp) {
        emit(state.copyWith(
            isLoading: false,
            hasError: false,
            message: resp.message,
            addRemoveWishlistResp: resp));
        add(WishlistEvent.getWishlistEvent(
            getWishlistQurreyModel:
                GetWishlistQurreyModel(page: 1, count: 30)));
      });
    });
  }
}
