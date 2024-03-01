import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:device/domain/core/constants/api_endpoint/api_endpoint.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/core/constants/error_msg.dart';
import 'package:device/domain/models/category_models/category_by_products_model/category_id_product_model/category_id_product_model.dart';
import 'package:device/domain/models/category_models/category_by_products_model/category_product_qurrey_model/category_product_qurrey_model.dart';
import 'package:device/domain/models/category_models/category_by_products_model/category_product_resp_model/category_product_resp_model.dart';
import 'package:device/domain/models/inventory_models/inventory_details_model/inventory_details_qurrey_id/inventory_details_qurrey_id.dart';
import 'package:device/domain/models/inventory_models/inventory_details_model/inventory_details_resp_model/inventory_details_resp_model.dart';
import 'package:device/domain/models/inventory_models/inventory_qurrrey_model/inventory_qurrey_model.dart';
import 'package:device/domain/models/inventory_models/inventory_resp_model/inventory_resp_model.dart';
import 'package:device/domain/models/search_models/search_qurrey_model/search_qurrey_model.dart';
import 'package:device/domain/models/search_models/search_resp_model/search_resp_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import 'package:device/domain/repositery/inventory_repositery/inventory_repositery.dart';

@LazySingleton(as: InventoryRepositery)
@injectable
class InventoryProvider implements InventoryRepositery {
  final Dio dio;
  final FlutterSecureStorage secureStorage;
  InventoryProvider(
    this.dio,
    this.secureStorage,
  );

  @override
  Future<Either<ErrorMsg, InventoryRespModel>> getAllProducts(
      {required InventoryQurreyModel inventoryQurreyModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.get(ApiEndPoint.getProductEndPoint,
          queryParameters: inventoryQurreyModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(InventoryRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: InventoryRespModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, SearchRespModel>> search({
    required SearchQurreyModel searchQurreyModel,
  }) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }

      final response = await dio.post(ApiEndPoint.searchEndPoint,
          queryParameters: searchQurreyModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(SearchRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: SearchRespModel.fromJson(response.data).message!));
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
  Future<Either<ErrorMsg, InventoryDetailsRespModel>> getAllProductsDetails(
      {required InventoryDetailsQurreyModel
          inventoryDetailsQurreyModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.get(ApiEndPoint.productDetailsEndPoint
          .replaceFirst(
              '{productID}', inventoryDetailsQurreyModel.id.toString()));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(InventoryDetailsRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message:
                InventoryDetailsRespModel.fromJson(response.data).message!));
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
  Future<Either<ErrorMsg, InventoryRespModel>> categoryProduct(
      {required CategoryProductQurreyModel categoryProductQurreyModel,
      required CategoryIdProductModel categoryIdProductModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.get(
          ApiEndPoint.categoryProductEndPoint.replaceFirst(
              '{categoryID}', categoryIdProductModel.categoryId.toString()),
          queryParameters: categoryProductQurreyModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(InventoryRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message:
                CategoryProductRespModel.fromJson(response.data).message!));
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
