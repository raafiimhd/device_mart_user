import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:device/domain/core/constants/api_endpoint/api_endpoint.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/core/constants/error_msg.dart';
import 'package:device/domain/models/order/checkout_model/checkout_model.dart';
import 'package:device/domain/models/order/get_order_model/get_order_model.dart';
import 'package:device/domain/models/order/get_order_model/get_order_qurrey_model.dart';
import 'package:device/domain/models/order/order_qurrey_model/order_qurrey.dart';
import 'package:device/domain/models/order/rating_model/get_rating_model.dart';
import 'package:device/domain/models/order/rating_model/rating_model.dart';
import 'package:device/domain/models/order/rating_model/rating_qurrey.dart';
import 'package:device/domain/models/order/razor_pay_model/razor_pay_model.dart';
import 'package:device/domain/models/order/razorpay_proces_model/razorpay_proces_model.dart';
import 'package:device/domain/models/order/razorpay_proces_model/razorpay_process_resp/razorpay_process_resp.dart';
import 'package:device/domain/models/order/select_wallet_resp/select_wallet_resp.dart';
import 'package:device/domain/models/success_resp_model/success_resp_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:device/domain/repositery/order_repository/order_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: OrderRepository)
@injectable
class OrderProvider implements OrderRepository {
  final Dio dio;
  final FlutterSecureStorage secureStorage;
  OrderProvider(
    this.dio,
    this.secureStorage,
  );

  @override
  Future<Either<ErrorMsg, CheckoutModel>> checkout() async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }

      final response = await dio.get(ApiEndPoint.checkoutEndPoint);
      if (response.statusCode == 200) {
        return Right(CheckoutModel.fromJson(response.data));
      } else {
        return Left(
            ErrorMsg(message: CheckoutModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, GetOrderModel>> getOrder(
      {required GetOrderQurreyModel getOrderQurreyModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.get(ApiEndPoint.getOrderEndPoint,
          queryParameters: getOrderQurreyModel.toJson());
      if (response.statusCode == 200) {
        return Right(GetOrderModel.fromJson(response.data));
      } else {
        return Left(
            ErrorMsg(message: GetOrderModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, RazorpayProcessResp>> razorpayProcess(
      {required RazorpayProcesModel razorpayProcesModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }

      final response = await dio.post(ApiEndPoint.razorPayementEndPoint,
          data: razorpayProcesModel.toJson());
      if (response.statusCode == 200) {
        return Right(RazorpayProcessResp.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: RazorpayProcessResp.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, RazorPayModel>> getRazaropay() async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.get(ApiEndPoint.getRazorPayementEndPoint);
      if (response.statusCode == 200) {
        return Right(RazorPayModel.fromJson(response.data));
      } else {
        return Left(
            ErrorMsg(message: RazorPayModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, SuccessRespModel>> cashOnDelivery() async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.post(ApiEndPoint.cashOnDeliveryEndPoint);
      if (response.statusCode == 200) {
        return Right(SuccessRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: SuccessRespModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, SuccessRespModel>> cancelOrder(
      {required OrderQrrey orderQrrey}) async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.post(ApiEndPoint.cancelOrderEndPoint
          .replaceFirst('{orderID}', orderQrrey.id.toString()));
      if (response.statusCode == 200) {
        return Right(SuccessRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: SuccessRespModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, SuccessRespModel>> returnOrder(
      {required OrderQrrey orderQrrey}) async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.post(ApiEndPoint.returnOrderEndPoint
          .replaceFirst('{orderID}', orderQrrey.id.toString()));
      if (response.statusCode == 200) {
        return Right(SuccessRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: SuccessRespModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, SuccessRespModel>> ratingProduct(
      {required RatingModel ratingModel,
      required RatingQurrey ratingQurrey}) async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.post(
          ApiEndPoint.baseUrl +
              ApiEndPoint.ratingProdctEndpoint.replaceFirst(
                '{productID}',
                ratingQurrey.id.toString(),
              ),
          data: ratingModel.toJson());
      if (response.statusCode == 200) {
        return Right(SuccessRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: SuccessRespModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, GetRatingModel>> getRatingProduct(
      {required RatingQurrey ratingQurrey}) async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.get(ApiEndPoint.getRatingProductEndPoint
          .replaceFirst('{productID}', ratingQurrey.id.toString()));
      if (response.statusCode == 200) {
        return Right(GetRatingModel.fromJson(response.data));
      } else if (response.statusCode == 401 || response.statusCode == 409) {
        return Left(
            ErrorMsg(message: GetRatingModel.fromJson(response.data).message!));
      } else {
        return Left(
            ErrorMsg(message: GetOrderModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, SelectWalletResp>> selectWallet() async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.post(ApiEndPoint.selectWalletEndPoint);
      if (response.statusCode == 200) {
        return Right(SelectWalletResp.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: SelectWalletResp.fromJson(response.data).message!));
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
