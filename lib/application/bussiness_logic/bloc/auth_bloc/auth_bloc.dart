import 'package:bloc/bloc.dart';
import 'package:device/domain/models/auth_models/otp_response_model/otp_response_model.dart';
import 'package:device/domain/models/auth_models/register_phone_number_model/register_phone_number_model.dart';
import 'package:device/domain/models/auth_models/register_phone_number_resp_model/register_phone_number_res_model.dart';
import 'package:device/domain/models/auth_models/sign_in_model/sign_in_model.dart';
import 'package:device/domain/models/auth_models/sign_in_response_model/sign_in_response_model.dart';
import 'package:device/domain/models/auth_models/sign_up_model/sign_up_model.dart';
import 'package:device/domain/models/auth_models/sign_up_response_model/sign_up_response_model.dart';
import 'package:device/domain/models/auth_models/verify_data_model/verify_otp_data_model.dart';
import 'package:device/domain/models/auth_models/verify_otp_response_model/verify_otp_response_model.dart';
import 'package:device/domain/repositery/auth_repositery/auth_repositery.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepositery repository;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordLoginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  final TextEditingController conformPasswordController =
      TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController otpNumberController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> signUpKey = GlobalKey<FormState>();
  final GlobalKey<FormState> phoneKey = GlobalKey<FormState>();
  final GlobalKey<FormState> otpKey = GlobalKey<FormState>();
  AuthBloc(this.repository) : super(AuthState.initial()) {
    on<SignIn>((event, emit) async {
      emit(state.copyWith(
          isLoggedIn: true, signInHasError: false, message: null));
      final result = await repository.signIn(SignInModel(
          phone: int.parse(phoneNumberController.text.trim()),
          password: passwordController.text.trim()));
      phoneNumberController.clear();
      passwordController.clear();
      emit(state.copyWith(
        isLoggedIn: false,
        message: result,
        signInHasError: false,
      ));
    });

    on<SignUP>((event, emit) async {
      emit(state.copyWith(
        signUpIsLoading: true,
        signIUPHasError: false,
      ));
      final result = await repository.signUp(
        SignUpDataModel(
          username: usernameController.text.trim(),
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
          uuid: state.uuid,
        ),
      );
      final newState = result.fold((failure) {
        return state.copyWith(
            signUpIsLoading: false,
            signIUPHasError: true,
            message: failure.message);
      }, (resp) {
        return state.copyWith(
            signUpIsLoading: false,
            signIUPHasError: false,
            message: resp.message,
            signUpRespModel: resp);
      });
      usernameController.clear();
      emailController.clear();
      passwordController.clear();
      conformPasswordController.clear();
      emit(newState);
    });
    on<_Obscure>(
        (event, emit) => emit(state.copyWith(obscure: !state.obscure)));
    on<RegisterPhoneNumber>((event, emit) async {
      emit(state.copyWith(
        registerPhoneNumberIsLoading: true,
      ));

      final result = await repository.registerPhoneNumber(
          RegisterPhoneNumberModel(
              phone: int.parse(phoneNumberController.text.trim())));
      final newState = result.fold((message) {
        return state.copyWith(
            message: message,
            registerPhoneNumberIsLoading: false,
            registerPhoneNumberHasError: true);
      }, (resp) {
        return state.copyWith(
            registerPhoneNumberIsLoading: false,
            registerPhoneNumberHasError: false,
            registerPhoneNumberResModel: resp,
            uuid: resp.data!['uuid'],
            message: resp.message ?? '');
      });
      phoneNumberController.clear();
      emit(newState);
    });

    on<VerifyOtp>((event, emit) async {
      emit(state.copyWith(
          message: null, verifyOtpIsLoading: true, verifyOtpHasError: true));
      final result = await repository
          .verifyOtp(VerifyOtpDataModel(otp: "0000", uuid: state.uuid));
      final newState = result.fold((failure) {
        return state.copyWith(
            verifyOtpIsLoading: false,
            verifyOtpHasError: true,
            message: failure.message);
      }, (resp) {
        return state.copyWith(
            verifyOtpIsLoading: false,
            verifyOtpHasError: false,
            verifyOtpResponseModel: resp,
            uuid: resp.data!['uuid'],
            message: resp.message);
      });

      phoneNumberController.clear();
      emit(newState);
    });
  }
  Future<void> logout() async {
    await repository.logout();
  }
}
