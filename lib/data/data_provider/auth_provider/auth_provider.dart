import 'package:dartz/dartz.dart';
import 'package:device/domain/core/constants/api_endpoint/api_endpoint.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/core/constants/error_msg.dart';
import 'package:device/domain/models/auth_models/register_phone_number_model/register_phone_number_model.dart';
import 'package:device/domain/models/auth_models/register_phone_number_resp_model/register_phone_number_res_model.dart';
import 'package:device/domain/models/auth_models/sign_in_model/sign_in_model.dart';
import 'package:device/domain/models/auth_models/sign_up_model/sign_up_model.dart';
import 'package:device/domain/models/auth_models/sign_up_response_model/sign_up_response_model.dart';
import 'package:device/domain/models/auth_models/verify_data_model/verify_otp_data_model.dart';
import 'package:device/domain/models/auth_models/verify_otp_response_model/verify_otp_response_model.dart';
import 'package:device/domain/repositery/auth_repositery/auth_repositery.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepositery)
@injectable
class AuthProvider implements AuthRepositery {
  final Dio dio;
  final FlutterSecureStorage secureStorage;
  AuthProvider(this.dio, this.secureStorage);

  @override
  Future<void> logout() async {
    try {
      final token = await secureStorage.read(key: 'token');
      await secureStorage.delete(key: 'token');
      dio.options.headers["Authorization"] = 'Bearer $token';
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Future<String> signIn(SignInModel signInModel) async {
    try {
      final response = await dio.post(ApiEndPoint.signInEndPoint,
          data: signInModel.toJson());
      if (response.statusCode == 200) {
        final token = response.data['data']['token'];
        await secureStorage.write(key: 'token', value: token);
        await secureStorage.read(key: 'token');
        return response.data['message'];
      } else {
        return 'Something error status code';
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return e.response?.data['message'];
      } else {
        return e.toString();
      }
    } catch (e) {
      return e.toString();
    }
  }

  @override
  Future<Either<ErrorMsg, SignUpRespModel>> signUp(
      SignUpDataModel signUpDataModel) async {
    try {
      final response = await dio.post(ApiEndPoint.signUpEndPoint,
          data: signUpDataModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(SignUpRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: SignUpRespModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<String, RegisterPhoneNumberResModel>> registerPhoneNumber(
      RegisterPhoneNumberModel sendOtpModel) async {
    try {
      final response = await dio.post(
        ApiEndPoint.sentOtpEndPoint,
        data: sendOtpModel.toJson(),
        options: Options(contentType: Headers.jsonContentType),
      );
      if (response.statusCode == 200) {
        final resModel = RegisterPhoneNumberResModel.fromJson(response.data);
        return Right(resModel);
      } else {
        return const Left('Something Error in status code');
      }
    } on DioException catch (e) {
      if (e.response!.statusCode == 404) {
        return Left(e.response!.data['message']);
      } else {
        return const Left('Something Error');
      }
    }
  }

  @override
  Future<Either<ErrorMsg, VerifyOtpResponseModel>> verifyOtp(
    VerifyOtpDataModel verifyOtpDataModel,
  ) async {
    try {
      final response = await dio.post(
        ApiEndPoint.verifyOtpEndPoint,
        data: verifyOtpDataModel.toJson(),
      );
      if (response.statusCode == 200) {
        final resModel = VerifyOtpResponseModel.fromJson(response.data);
        return Right(resModel);
      } else {
        return Left(
          ErrorMsg(
            message: VerifyOtpResponseModel.fromJson(response.data).message!,
          ),
        );
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return Left(e.response?.data['message']);
      } else {
        return Left(ErrorMsg(message: errorMsg));
      }
    }
  }
}
