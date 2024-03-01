import 'package:dartz/dartz.dart';
import 'package:device/domain/core/constants/error_msg.dart';
import 'package:device/domain/models/auth_models/register_phone_number_model/register_phone_number_model.dart';
import 'package:device/domain/models/auth_models/register_phone_number_resp_model/register_phone_number_res_model.dart';
import 'package:device/domain/models/auth_models/sign_in_model/sign_in_model.dart';
import 'package:device/domain/models/auth_models/sign_up_model/sign_up_model.dart';
import 'package:device/domain/models/auth_models/sign_up_response_model/sign_up_response_model.dart';
import 'package:device/domain/models/auth_models/verify_data_model/verify_otp_data_model.dart';
import 'package:device/domain/models/auth_models/verify_otp_response_model/verify_otp_response_model.dart';

abstract class AuthRepositery {
  Future<String> signIn(SignInModel signInModel);
  Future<void> logout();
  Future<Either<String, RegisterPhoneNumberResModel>> registerPhoneNumber(
      RegisterPhoneNumberModel sendOtpModel);

  Future<Either<ErrorMsg, VerifyOtpResponseModel>> verifyOtp(
      VerifyOtpDataModel verifyOtpDataModel);

  Future<Either<ErrorMsg, SignUpRespModel>> signUp(
      SignUpDataModel signUpDataModel);
}
