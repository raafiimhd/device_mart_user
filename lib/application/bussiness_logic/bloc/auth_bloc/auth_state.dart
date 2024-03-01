part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool signInIsLoading,
    required bool signInHasError,
    required bool signUpIsLoading,
    required bool signIUPHasError,
    required bool isObscure,
    required bool isLoggedIn,
    required bool verifyOtpIsLoading,
    required bool verifyOtpHasError,
    required bool registerPhoneNumberHasError,
    required bool registerPhoneNumberIsLoading,
    required bool obscure,
    String? message,
    String? uuid,
    RegisterPhoneNumberModel? sendOtpModel,
    RegisterPhoneNumberResModel? registerPhoneNumberResModel,
    SignInResponseModel? signInResponseModel,
    SignUpRespModel? signUpRespModel,
    VerifyOtpResponseModel? verifyOtpResponseModel,
    OtpResponseModel? otpRes,
  }) = _Initial;
  factory AuthState.initial() => const AuthState(
        isObscure: true,
        verifyOtpHasError: false,
        verifyOtpIsLoading: false,
        signInIsLoading: false,
        signInHasError: false,
        signUpIsLoading: false,
        signIUPHasError: false,
        isLoggedIn: false,
        registerPhoneNumberHasError: false,
        registerPhoneNumberIsLoading: false,
        obscure: true,
      );
}
