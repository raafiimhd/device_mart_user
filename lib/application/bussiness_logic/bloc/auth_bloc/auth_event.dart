part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signUP() = SignUP;
  const factory AuthEvent.signIn() = SignIn;
  const factory AuthEvent.signOut() = _SignOut;
  const factory AuthEvent.sendOtp() = RegisterPhoneNumber;

  const factory AuthEvent.verifyOtp() = VerifyOtp;
  const factory AuthEvent.obscure() = _Obscure;
  const factory AuthEvent.log() = _Log;
}
