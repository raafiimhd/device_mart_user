import 'package:dartz/dartz.dart';
import 'package:device/domain/core/constants/error_msg.dart';
import 'package:device/domain/models/cart_and_coupon/add_cart_model/add_cart_qurrey_model.dart';
import 'package:device/domain/models/cart_and_coupon/add_cart_model/add_cart_resp_model.dart';
import 'package:device/domain/models/cart_and_coupon/coupon/apply_coupon/apply_coupon.dart';
import 'package:device/domain/models/cart_and_coupon/coupon/apply_coupon/apply_coupon_resp.dart';
import 'package:device/domain/models/cart_and_coupon/coupon/get_coupon_model/get_coupon_resp_model.dart';
import 'package:device/domain/models/cart_and_coupon/get_cart_model/get_cart_qurrey_model.dart';
import 'package:device/domain/models/cart_and_coupon/get_cart_model/get_cart_resp_model.dart';
import 'package:device/domain/models/cart_and_coupon/increment_and_decrement_qurrey/inc_and_dec_resp_model.dart';
import 'package:device/domain/models/cart_and_coupon/increment_and_decrement_qurrey/increment_and_decrement_qurrey.dart';
import 'package:device/domain/models/cart_and_coupon/remove_cart_model/remove_cart_model.dart';
import 'package:device/domain/models/cart_and_coupon/remove_cart_model/remove_cart_resp_model.dart';

abstract class CartRepositery {
  Future<Either<ErrorMsg, GetCartRespModel>> getCart(
      {required GetCartQurreyModel getCartQurreyModel});
  Future<Either<ErrorMsg, AddCartRespModel>> addCart(
      {required AddCartQurreyModel addCartQurreyModel});
  Future<Either<ErrorMsg, RemoveCartRespModel>> removeCart(
      {required RemoveCartModel removeCartModel});
  Future<Either<ErrorMsg, IncrementAndDecrementRespModel>> incrementCart(
      {required IncrementAndDecrementQurrey incrementAndDecrementQurrey});
  Future<Either<ErrorMsg, IncrementAndDecrementRespModel>> decrementCart(
      {required IncrementAndDecrementQurrey incrementAndDecrementQurrey});

  Future<Either<ErrorMsg, GetCouponRespModel>> getCoupon();

  Future<Either<ErrorMsg, ApplyCouponRespModel>> applyCoupon(
      {required ApplyCouponModel applyCouponModel});
}
