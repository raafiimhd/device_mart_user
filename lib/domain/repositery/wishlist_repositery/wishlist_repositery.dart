import 'package:dartz/dartz.dart';
import 'package:device/application/bussiness_logic/bloc/wishlist/wishlist_bloc.dart';
import 'package:device/domain/core/constants/error_msg.dart';
import 'package:device/domain/models/wishlist_models/add_remove_wishlist/add_remove_wishlist_qurrey_model/add_remove_wishlist_qurrey_model.dart';
import 'package:device/domain/models/wishlist_models/add_remove_wishlist/add_remove_wishlist_resp/add_remove_wishlist_resp.dart';
import 'package:device/domain/models/wishlist_models/get_wishlist/get_wishlist_qurrey_model/get_wishlist_qurrey_model.dart';
import 'package:device/domain/models/wishlist_models/get_wishlist/get_wishlist_resp_model/get_wishlist_resp_model.dart';

abstract class WishlistRepositery {
  Future<Either<ErrorMsg, GetWishlistRespModel>> getWishlist(
      {required GetWishlistQurreyModel getWishlistQurreyModel});

  Future<Either<ErrorMsg, AddRemoveWishlistResp>> addWishlist(
      {required AddRemoveWishlistQurreyModel addRemoveWishlistQurreyModel});
  Future<Either<ErrorMsg, AddRemoveWishlistResp>> removeWishlist(
      {required RemoveWishlistEvent removeWishlistEvent});
}
