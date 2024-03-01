import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:device/application/bussiness_logic/bloc/wishlist/wishlist_bloc.dart';
import 'package:device/domain/core/constants/api_endpoint/api_endpoint.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/core/constants/error_msg.dart';
import 'package:device/domain/models/wishlist_models/add_remove_wishlist/add_remove_wishlist_qurrey_model/add_remove_wishlist_qurrey_model.dart';
import 'package:device/domain/models/wishlist_models/add_remove_wishlist/add_remove_wishlist_resp/add_remove_wishlist_resp.dart';
import 'package:device/domain/models/wishlist_models/get_wishlist/get_wishlist_qurrey_model/get_wishlist_qurrey_model.dart';
import 'package:device/domain/models/wishlist_models/get_wishlist/get_wishlist_resp_model/get_wishlist_resp_model.dart';
import 'package:device/domain/repositery/wishlist_repositery/wishlist_repositery.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: WishlistRepositery)
@injectable
class WishlistProvider implements WishlistRepositery {
  final Dio dio;
  final FlutterSecureStorage secureStorage;

  WishlistProvider(this.dio, this.secureStorage);

  @override
  Future<Either<ErrorMsg, GetWishlistRespModel>> getWishlist(
      {required GetWishlistQurreyModel getWishlistQurreyModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }

      final response = await dio.get(ApiEndPoint.getWishlistEndPoint,
          queryParameters: getWishlistQurreyModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(GetWishlistRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: GetWishlistRespModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      log('Requested URL: ${dioError.requestOptions.uri}');
      log('dio error => ${dioError.message.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      log('dio error => ${e.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, AddRemoveWishlistResp>> addWishlist(
      {required AddRemoveWishlistQurreyModel
          addRemoveWishlistQurreyModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.post(ApiEndPoint.addWishlistEndPoint
          .replaceFirst(
              '{productID}', addRemoveWishlistQurreyModel.id.toString()));

      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(AddRemoveWishlistResp.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: AddRemoveWishlistResp.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      log('Requested URL: ${dioError.requestOptions.uri}');
      log('dio error => ${dioError.message.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      log('dio error => ${e.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, AddRemoveWishlistResp>> removeWishlist(
      {required RemoveWishlistEvent removeWishlistEvent}) async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }

      final response = await dio.delete(ApiEndPoint.removeWishlistEndPoint
          .replaceFirst('{productID}', removeWishlistEvent.id.toString()));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(AddRemoveWishlistResp.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: AddRemoveWishlistResp.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      log('Requested URL: ${dioError.requestOptions.uri}');
      log('dio error => ${dioError.message.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      log('dio error => ${e.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    }
  }
}
