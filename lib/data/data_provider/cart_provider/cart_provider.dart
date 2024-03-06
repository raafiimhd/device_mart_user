
import 'package:dartz/dartz.dart';
import 'package:device/domain/core/constants/api_endpoint/api_endpoint.dart';
import 'package:device/domain/core/constants/const.dart';
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

import 'package:device/domain/repositery/cart_repository/cart_repositery.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CartRepositery)
@injectable
class CartProvider implements CartRepositery {
  final Dio dio;
  final FlutterSecureStorage secureStorage;

  CartProvider(this.dio, this.secureStorage);
  @override
  Future<Either<ErrorMsg, GetCartRespModel>> getCart(
      {required GetCartQurreyModel getCartQurreyModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.get(ApiEndPoint.getCartEndPoint,
          queryParameters: getCartQurreyModel.toJson());
      if (response.statusCode == 200) {
        return Right(GetCartRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: GetCartRespModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, AddCartRespModel>> addCart(
      {required AddCartQurreyModel addCartQurreyModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }

      final response = await dio.post(ApiEndPoint.addCartEndPoint
          .replaceFirst('{productID}', addCartQurreyModel.id.toString()));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(AddCartRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: AddCartRespModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, IncrementAndDecrementRespModel>> incrementCart(
      {required IncrementAndDecrementQurrey
          incrementAndDecrementQurrey}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }

      final response = await dio.put(ApiEndPoint.incrementEndPoint.replaceFirst(
          "{productID}", incrementAndDecrementQurrey.id.toString()));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(IncrementAndDecrementRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: IncrementAndDecrementRespModel.fromJson(response.data)
                .message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, IncrementAndDecrementRespModel>> decrementCart(
      {required IncrementAndDecrementQurrey
          incrementAndDecrementQurrey}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }

      final response = await dio.put(ApiEndPoint.decrementEndPoint.replaceFirst(
          "{productID}", incrementAndDecrementQurrey.id.toString()));
      if (response.statusCode == 200) {
        return Right(IncrementAndDecrementRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: IncrementAndDecrementRespModel.fromJson(response.data)
                .message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, RemoveCartRespModel>> removeCart(
      {required RemoveCartModel removeCartModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }

      final respone = await dio.delete(ApiEndPoint.removeCartEndPoint
          .replaceFirst('{productID}', removeCartModel.id.toString()));
      if (respone.statusCode == 200) {
        return Right(RemoveCartRespModel.fromJson(respone.data));
      } else {
        return Left(ErrorMsg(
            message: RemoveCartRespModel.fromJson(respone.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, GetCouponRespModel>> getCoupon() async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.get(ApiEndPoint.getCouponEndPoint);
      if (response.statusCode == 200) {
        return Right(GetCouponRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: GetCouponRespModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, ApplyCouponRespModel>> applyCoupon(
      {required ApplyCouponModel applyCouponModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }

      final response = await dio.post(ApiEndPoint.applyCouponEndPoint,
          data: applyCouponModel.toJson());
      if (response.statusCode == 200) {
        return Right(ApplyCouponRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: ApplyCouponRespModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

}
