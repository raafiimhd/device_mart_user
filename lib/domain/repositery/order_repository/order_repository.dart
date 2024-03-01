import 'package:dartz/dartz.dart';
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

abstract class OrderRepository {
  Future<Either<ErrorMsg, CheckoutModel>> checkout();
  Future<Either<ErrorMsg, GetOrderModel>> getOrder(
      {required GetOrderQurreyModel getOrderQurreyModel});
  Future<Either<ErrorMsg, RazorpayProcessResp>> razorpayProcess(
      {required RazorpayProcesModel razorpayProcesModel});
  Future<Either<ErrorMsg, RazorPayModel>> getRazaropay();
  Future<Either<ErrorMsg, SuccessRespModel>> cashOnDelivery();
  Future<Either<ErrorMsg, SuccessRespModel>> cancelOrder(
      {required OrderQrrey orderQrrey});
  Future<Either<ErrorMsg, SuccessRespModel>> returnOrder(
      {required OrderQrrey orderQrrey});
  Future<Either<ErrorMsg, SuccessRespModel>> ratingProduct(
      {required RatingModel ratingModel, required RatingQurrey ratingQurrey});
  Future<Either<ErrorMsg, GetRatingModel>> getRatingProduct(
      {required RatingQurrey ratingQurrey});
  Future<Either<ErrorMsg, SelectWalletResp>> selectWallet();
}
