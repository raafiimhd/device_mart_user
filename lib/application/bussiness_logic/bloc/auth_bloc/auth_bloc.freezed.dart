// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUP,
    required TResult Function() signIn,
    required TResult Function() signOut,
    required TResult Function() sendOtp,
    required TResult Function() verifyOtp,
    required TResult Function() obscure,
    required TResult Function() log,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUP,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
    TResult? Function()? sendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? log,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUP,
    TResult Function()? signIn,
    TResult Function()? signOut,
    TResult Function()? sendOtp,
    TResult Function()? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? log,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUP value) signUP,
    required TResult Function(SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(RegisterPhoneNumber value) sendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_Log value) log,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUP value)? signUP,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(RegisterPhoneNumber value)? sendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_Log value)? log,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUP value)? signUP,
    TResult Function(SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(RegisterPhoneNumber value)? sendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_Log value)? log,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignUPImplCopyWith<$Res> {
  factory _$$SignUPImplCopyWith(
          _$SignUPImpl value, $Res Function(_$SignUPImpl) then) =
      __$$SignUPImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUPImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUPImpl>
    implements _$$SignUPImplCopyWith<$Res> {
  __$$SignUPImplCopyWithImpl(
      _$SignUPImpl _value, $Res Function(_$SignUPImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUPImpl implements SignUP {
  const _$SignUPImpl();

  @override
  String toString() {
    return 'AuthEvent.signUP()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUPImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUP,
    required TResult Function() signIn,
    required TResult Function() signOut,
    required TResult Function() sendOtp,
    required TResult Function() verifyOtp,
    required TResult Function() obscure,
    required TResult Function() log,
  }) {
    return signUP();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUP,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
    TResult? Function()? sendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? log,
  }) {
    return signUP?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUP,
    TResult Function()? signIn,
    TResult Function()? signOut,
    TResult Function()? sendOtp,
    TResult Function()? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? log,
    required TResult orElse(),
  }) {
    if (signUP != null) {
      return signUP();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUP value) signUP,
    required TResult Function(SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(RegisterPhoneNumber value) sendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_Log value) log,
  }) {
    return signUP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUP value)? signUP,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(RegisterPhoneNumber value)? sendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_Log value)? log,
  }) {
    return signUP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUP value)? signUP,
    TResult Function(SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(RegisterPhoneNumber value)? sendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_Log value)? log,
    required TResult orElse(),
  }) {
    if (signUP != null) {
      return signUP(this);
    }
    return orElse();
  }
}

abstract class SignUP implements AuthEvent {
  const factory SignUP() = _$SignUPImpl;
}

/// @nodoc
abstract class _$$SignInImplCopyWith<$Res> {
  factory _$$SignInImplCopyWith(
          _$SignInImpl value, $Res Function(_$SignInImpl) then) =
      __$$SignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInImpl>
    implements _$$SignInImplCopyWith<$Res> {
  __$$SignInImplCopyWithImpl(
      _$SignInImpl _value, $Res Function(_$SignInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInImpl implements SignIn {
  const _$SignInImpl();

  @override
  String toString() {
    return 'AuthEvent.signIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUP,
    required TResult Function() signIn,
    required TResult Function() signOut,
    required TResult Function() sendOtp,
    required TResult Function() verifyOtp,
    required TResult Function() obscure,
    required TResult Function() log,
  }) {
    return signIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUP,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
    TResult? Function()? sendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? log,
  }) {
    return signIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUP,
    TResult Function()? signIn,
    TResult Function()? signOut,
    TResult Function()? sendOtp,
    TResult Function()? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? log,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUP value) signUP,
    required TResult Function(SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(RegisterPhoneNumber value) sendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_Log value) log,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUP value)? signUP,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(RegisterPhoneNumber value)? sendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_Log value)? log,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUP value)? signUP,
    TResult Function(SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(RegisterPhoneNumber value)? sendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_Log value)? log,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignIn implements AuthEvent {
  const factory SignIn() = _$SignInImpl;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutImpl implements _SignOut {
  const _$SignOutImpl();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUP,
    required TResult Function() signIn,
    required TResult Function() signOut,
    required TResult Function() sendOtp,
    required TResult Function() verifyOtp,
    required TResult Function() obscure,
    required TResult Function() log,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUP,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
    TResult? Function()? sendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? log,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUP,
    TResult Function()? signIn,
    TResult Function()? signOut,
    TResult Function()? sendOtp,
    TResult Function()? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? log,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUP value) signUP,
    required TResult Function(SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(RegisterPhoneNumber value) sendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_Log value) log,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUP value)? signUP,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(RegisterPhoneNumber value)? sendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_Log value)? log,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUP value)? signUP,
    TResult Function(SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(RegisterPhoneNumber value)? sendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_Log value)? log,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthEvent {
  const factory _SignOut() = _$SignOutImpl;
}

/// @nodoc
abstract class _$$RegisterPhoneNumberImplCopyWith<$Res> {
  factory _$$RegisterPhoneNumberImplCopyWith(_$RegisterPhoneNumberImpl value,
          $Res Function(_$RegisterPhoneNumberImpl) then) =
      __$$RegisterPhoneNumberImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterPhoneNumberImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterPhoneNumberImpl>
    implements _$$RegisterPhoneNumberImplCopyWith<$Res> {
  __$$RegisterPhoneNumberImplCopyWithImpl(_$RegisterPhoneNumberImpl _value,
      $Res Function(_$RegisterPhoneNumberImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterPhoneNumberImpl implements RegisterPhoneNumber {
  const _$RegisterPhoneNumberImpl();

  @override
  String toString() {
    return 'AuthEvent.sendOtp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterPhoneNumberImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUP,
    required TResult Function() signIn,
    required TResult Function() signOut,
    required TResult Function() sendOtp,
    required TResult Function() verifyOtp,
    required TResult Function() obscure,
    required TResult Function() log,
  }) {
    return sendOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUP,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
    TResult? Function()? sendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? log,
  }) {
    return sendOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUP,
    TResult Function()? signIn,
    TResult Function()? signOut,
    TResult Function()? sendOtp,
    TResult Function()? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? log,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUP value) signUP,
    required TResult Function(SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(RegisterPhoneNumber value) sendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_Log value) log,
  }) {
    return sendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUP value)? signUP,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(RegisterPhoneNumber value)? sendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_Log value)? log,
  }) {
    return sendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUP value)? signUP,
    TResult Function(SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(RegisterPhoneNumber value)? sendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_Log value)? log,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(this);
    }
    return orElse();
  }
}

abstract class RegisterPhoneNumber implements AuthEvent {
  const factory RegisterPhoneNumber() = _$RegisterPhoneNumberImpl;
}

/// @nodoc
abstract class _$$VerifyOtpImplCopyWith<$Res> {
  factory _$$VerifyOtpImplCopyWith(
          _$VerifyOtpImpl value, $Res Function(_$VerifyOtpImpl) then) =
      __$$VerifyOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyOtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyOtpImpl>
    implements _$$VerifyOtpImplCopyWith<$Res> {
  __$$VerifyOtpImplCopyWithImpl(
      _$VerifyOtpImpl _value, $Res Function(_$VerifyOtpImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifyOtpImpl implements VerifyOtp {
  const _$VerifyOtpImpl();

  @override
  String toString() {
    return 'AuthEvent.verifyOtp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifyOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUP,
    required TResult Function() signIn,
    required TResult Function() signOut,
    required TResult Function() sendOtp,
    required TResult Function() verifyOtp,
    required TResult Function() obscure,
    required TResult Function() log,
  }) {
    return verifyOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUP,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
    TResult? Function()? sendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? log,
  }) {
    return verifyOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUP,
    TResult Function()? signIn,
    TResult Function()? signOut,
    TResult Function()? sendOtp,
    TResult Function()? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? log,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUP value) signUP,
    required TResult Function(SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(RegisterPhoneNumber value) sendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_Log value) log,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUP value)? signUP,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(RegisterPhoneNumber value)? sendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_Log value)? log,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUP value)? signUP,
    TResult Function(SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(RegisterPhoneNumber value)? sendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_Log value)? log,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class VerifyOtp implements AuthEvent {
  const factory VerifyOtp() = _$VerifyOtpImpl;
}

/// @nodoc
abstract class _$$ObscureImplCopyWith<$Res> {
  factory _$$ObscureImplCopyWith(
          _$ObscureImpl value, $Res Function(_$ObscureImpl) then) =
      __$$ObscureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ObscureImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ObscureImpl>
    implements _$$ObscureImplCopyWith<$Res> {
  __$$ObscureImplCopyWithImpl(
      _$ObscureImpl _value, $Res Function(_$ObscureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ObscureImpl implements _Obscure {
  const _$ObscureImpl();

  @override
  String toString() {
    return 'AuthEvent.obscure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ObscureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUP,
    required TResult Function() signIn,
    required TResult Function() signOut,
    required TResult Function() sendOtp,
    required TResult Function() verifyOtp,
    required TResult Function() obscure,
    required TResult Function() log,
  }) {
    return obscure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUP,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
    TResult? Function()? sendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? log,
  }) {
    return obscure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUP,
    TResult Function()? signIn,
    TResult Function()? signOut,
    TResult Function()? sendOtp,
    TResult Function()? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? log,
    required TResult orElse(),
  }) {
    if (obscure != null) {
      return obscure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUP value) signUP,
    required TResult Function(SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(RegisterPhoneNumber value) sendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_Log value) log,
  }) {
    return obscure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUP value)? signUP,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(RegisterPhoneNumber value)? sendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_Log value)? log,
  }) {
    return obscure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUP value)? signUP,
    TResult Function(SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(RegisterPhoneNumber value)? sendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_Log value)? log,
    required TResult orElse(),
  }) {
    if (obscure != null) {
      return obscure(this);
    }
    return orElse();
  }
}

abstract class _Obscure implements AuthEvent {
  const factory _Obscure() = _$ObscureImpl;
}

/// @nodoc
abstract class _$$LogImplCopyWith<$Res> {
  factory _$$LogImplCopyWith(_$LogImpl value, $Res Function(_$LogImpl) then) =
      __$$LogImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogImpl>
    implements _$$LogImplCopyWith<$Res> {
  __$$LogImplCopyWithImpl(_$LogImpl _value, $Res Function(_$LogImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogImpl implements _Log {
  const _$LogImpl();

  @override
  String toString() {
    return 'AuthEvent.log()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUP,
    required TResult Function() signIn,
    required TResult Function() signOut,
    required TResult Function() sendOtp,
    required TResult Function() verifyOtp,
    required TResult Function() obscure,
    required TResult Function() log,
  }) {
    return log();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUP,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
    TResult? Function()? sendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? log,
  }) {
    return log?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUP,
    TResult Function()? signIn,
    TResult Function()? signOut,
    TResult Function()? sendOtp,
    TResult Function()? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? log,
    required TResult orElse(),
  }) {
    if (log != null) {
      return log();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUP value) signUP,
    required TResult Function(SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(RegisterPhoneNumber value) sendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_Log value) log,
  }) {
    return log(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUP value)? signUP,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(RegisterPhoneNumber value)? sendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_Log value)? log,
  }) {
    return log?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUP value)? signUP,
    TResult Function(SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(RegisterPhoneNumber value)? sendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_Log value)? log,
    required TResult orElse(),
  }) {
    if (log != null) {
      return log(this);
    }
    return orElse();
  }
}

abstract class _Log implements AuthEvent {
  const factory _Log() = _$LogImpl;
}

/// @nodoc
mixin _$AuthState {
  bool get signInIsLoading => throw _privateConstructorUsedError;
  bool get signInHasError => throw _privateConstructorUsedError;
  bool get signUpIsLoading => throw _privateConstructorUsedError;
  bool get signIUPHasError => throw _privateConstructorUsedError;
  bool get isObscure => throw _privateConstructorUsedError;
  bool get isLoggedIn => throw _privateConstructorUsedError;
  bool get verifyOtpIsLoading => throw _privateConstructorUsedError;
  bool get verifyOtpHasError => throw _privateConstructorUsedError;
  bool get registerPhoneNumberHasError => throw _privateConstructorUsedError;
  bool get registerPhoneNumberIsLoading => throw _privateConstructorUsedError;
  bool get obscure => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get uuid => throw _privateConstructorUsedError;
  RegisterPhoneNumberModel? get sendOtpModel =>
      throw _privateConstructorUsedError;
  RegisterPhoneNumberResModel? get registerPhoneNumberResModel =>
      throw _privateConstructorUsedError;
  SignInResponseModel? get signInResponseModel =>
      throw _privateConstructorUsedError;
  SignUpRespModel? get signUpRespModel => throw _privateConstructorUsedError;
  VerifyOtpResponseModel? get verifyOtpResponseModel =>
      throw _privateConstructorUsedError;
  OtpResponseModel? get otpRes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool signInIsLoading,
      bool signInHasError,
      bool signUpIsLoading,
      bool signIUPHasError,
      bool isObscure,
      bool isLoggedIn,
      bool verifyOtpIsLoading,
      bool verifyOtpHasError,
      bool registerPhoneNumberHasError,
      bool registerPhoneNumberIsLoading,
      bool obscure,
      String? message,
      String? uuid,
      RegisterPhoneNumberModel? sendOtpModel,
      RegisterPhoneNumberResModel? registerPhoneNumberResModel,
      SignInResponseModel? signInResponseModel,
      SignUpRespModel? signUpRespModel,
      VerifyOtpResponseModel? verifyOtpResponseModel,
      OtpResponseModel? otpRes});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInIsLoading = null,
    Object? signInHasError = null,
    Object? signUpIsLoading = null,
    Object? signIUPHasError = null,
    Object? isObscure = null,
    Object? isLoggedIn = null,
    Object? verifyOtpIsLoading = null,
    Object? verifyOtpHasError = null,
    Object? registerPhoneNumberHasError = null,
    Object? registerPhoneNumberIsLoading = null,
    Object? obscure = null,
    Object? message = freezed,
    Object? uuid = freezed,
    Object? sendOtpModel = freezed,
    Object? registerPhoneNumberResModel = freezed,
    Object? signInResponseModel = freezed,
    Object? signUpRespModel = freezed,
    Object? verifyOtpResponseModel = freezed,
    Object? otpRes = freezed,
  }) {
    return _then(_value.copyWith(
      signInIsLoading: null == signInIsLoading
          ? _value.signInIsLoading
          : signInIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      signInHasError: null == signInHasError
          ? _value.signInHasError
          : signInHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      signUpIsLoading: null == signUpIsLoading
          ? _value.signUpIsLoading
          : signUpIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      signIUPHasError: null == signIUPHasError
          ? _value.signIUPHasError
          : signIUPHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyOtpIsLoading: null == verifyOtpIsLoading
          ? _value.verifyOtpIsLoading
          : verifyOtpIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyOtpHasError: null == verifyOtpHasError
          ? _value.verifyOtpHasError
          : verifyOtpHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      registerPhoneNumberHasError: null == registerPhoneNumberHasError
          ? _value.registerPhoneNumberHasError
          : registerPhoneNumberHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      registerPhoneNumberIsLoading: null == registerPhoneNumberIsLoading
          ? _value.registerPhoneNumberIsLoading
          : registerPhoneNumberIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      obscure: null == obscure
          ? _value.obscure
          : obscure // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      sendOtpModel: freezed == sendOtpModel
          ? _value.sendOtpModel
          : sendOtpModel // ignore: cast_nullable_to_non_nullable
              as RegisterPhoneNumberModel?,
      registerPhoneNumberResModel: freezed == registerPhoneNumberResModel
          ? _value.registerPhoneNumberResModel
          : registerPhoneNumberResModel // ignore: cast_nullable_to_non_nullable
              as RegisterPhoneNumberResModel?,
      signInResponseModel: freezed == signInResponseModel
          ? _value.signInResponseModel
          : signInResponseModel // ignore: cast_nullable_to_non_nullable
              as SignInResponseModel?,
      signUpRespModel: freezed == signUpRespModel
          ? _value.signUpRespModel
          : signUpRespModel // ignore: cast_nullable_to_non_nullable
              as SignUpRespModel?,
      verifyOtpResponseModel: freezed == verifyOtpResponseModel
          ? _value.verifyOtpResponseModel
          : verifyOtpResponseModel // ignore: cast_nullable_to_non_nullable
              as VerifyOtpResponseModel?,
      otpRes: freezed == otpRes
          ? _value.otpRes
          : otpRes // ignore: cast_nullable_to_non_nullable
              as OtpResponseModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool signInIsLoading,
      bool signInHasError,
      bool signUpIsLoading,
      bool signIUPHasError,
      bool isObscure,
      bool isLoggedIn,
      bool verifyOtpIsLoading,
      bool verifyOtpHasError,
      bool registerPhoneNumberHasError,
      bool registerPhoneNumberIsLoading,
      bool obscure,
      String? message,
      String? uuid,
      RegisterPhoneNumberModel? sendOtpModel,
      RegisterPhoneNumberResModel? registerPhoneNumberResModel,
      SignInResponseModel? signInResponseModel,
      SignUpRespModel? signUpRespModel,
      VerifyOtpResponseModel? verifyOtpResponseModel,
      OtpResponseModel? otpRes});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInIsLoading = null,
    Object? signInHasError = null,
    Object? signUpIsLoading = null,
    Object? signIUPHasError = null,
    Object? isObscure = null,
    Object? isLoggedIn = null,
    Object? verifyOtpIsLoading = null,
    Object? verifyOtpHasError = null,
    Object? registerPhoneNumberHasError = null,
    Object? registerPhoneNumberIsLoading = null,
    Object? obscure = null,
    Object? message = freezed,
    Object? uuid = freezed,
    Object? sendOtpModel = freezed,
    Object? registerPhoneNumberResModel = freezed,
    Object? signInResponseModel = freezed,
    Object? signUpRespModel = freezed,
    Object? verifyOtpResponseModel = freezed,
    Object? otpRes = freezed,
  }) {
    return _then(_$InitialImpl(
      signInIsLoading: null == signInIsLoading
          ? _value.signInIsLoading
          : signInIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      signInHasError: null == signInHasError
          ? _value.signInHasError
          : signInHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      signUpIsLoading: null == signUpIsLoading
          ? _value.signUpIsLoading
          : signUpIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      signIUPHasError: null == signIUPHasError
          ? _value.signIUPHasError
          : signIUPHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyOtpIsLoading: null == verifyOtpIsLoading
          ? _value.verifyOtpIsLoading
          : verifyOtpIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyOtpHasError: null == verifyOtpHasError
          ? _value.verifyOtpHasError
          : verifyOtpHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      registerPhoneNumberHasError: null == registerPhoneNumberHasError
          ? _value.registerPhoneNumberHasError
          : registerPhoneNumberHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      registerPhoneNumberIsLoading: null == registerPhoneNumberIsLoading
          ? _value.registerPhoneNumberIsLoading
          : registerPhoneNumberIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      obscure: null == obscure
          ? _value.obscure
          : obscure // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      sendOtpModel: freezed == sendOtpModel
          ? _value.sendOtpModel
          : sendOtpModel // ignore: cast_nullable_to_non_nullable
              as RegisterPhoneNumberModel?,
      registerPhoneNumberResModel: freezed == registerPhoneNumberResModel
          ? _value.registerPhoneNumberResModel
          : registerPhoneNumberResModel // ignore: cast_nullable_to_non_nullable
              as RegisterPhoneNumberResModel?,
      signInResponseModel: freezed == signInResponseModel
          ? _value.signInResponseModel
          : signInResponseModel // ignore: cast_nullable_to_non_nullable
              as SignInResponseModel?,
      signUpRespModel: freezed == signUpRespModel
          ? _value.signUpRespModel
          : signUpRespModel // ignore: cast_nullable_to_non_nullable
              as SignUpRespModel?,
      verifyOtpResponseModel: freezed == verifyOtpResponseModel
          ? _value.verifyOtpResponseModel
          : verifyOtpResponseModel // ignore: cast_nullable_to_non_nullable
              as VerifyOtpResponseModel?,
      otpRes: freezed == otpRes
          ? _value.otpRes
          : otpRes // ignore: cast_nullable_to_non_nullable
              as OtpResponseModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.signInIsLoading,
      required this.signInHasError,
      required this.signUpIsLoading,
      required this.signIUPHasError,
      required this.isObscure,
      required this.isLoggedIn,
      required this.verifyOtpIsLoading,
      required this.verifyOtpHasError,
      required this.registerPhoneNumberHasError,
      required this.registerPhoneNumberIsLoading,
      required this.obscure,
      this.message,
      this.uuid,
      this.sendOtpModel,
      this.registerPhoneNumberResModel,
      this.signInResponseModel,
      this.signUpRespModel,
      this.verifyOtpResponseModel,
      this.otpRes});

  @override
  final bool signInIsLoading;
  @override
  final bool signInHasError;
  @override
  final bool signUpIsLoading;
  @override
  final bool signIUPHasError;
  @override
  final bool isObscure;
  @override
  final bool isLoggedIn;
  @override
  final bool verifyOtpIsLoading;
  @override
  final bool verifyOtpHasError;
  @override
  final bool registerPhoneNumberHasError;
  @override
  final bool registerPhoneNumberIsLoading;
  @override
  final bool obscure;
  @override
  final String? message;
  @override
  final String? uuid;
  @override
  final RegisterPhoneNumberModel? sendOtpModel;
  @override
  final RegisterPhoneNumberResModel? registerPhoneNumberResModel;
  @override
  final SignInResponseModel? signInResponseModel;
  @override
  final SignUpRespModel? signUpRespModel;
  @override
  final VerifyOtpResponseModel? verifyOtpResponseModel;
  @override
  final OtpResponseModel? otpRes;

  @override
  String toString() {
    return 'AuthState(signInIsLoading: $signInIsLoading, signInHasError: $signInHasError, signUpIsLoading: $signUpIsLoading, signIUPHasError: $signIUPHasError, isObscure: $isObscure, isLoggedIn: $isLoggedIn, verifyOtpIsLoading: $verifyOtpIsLoading, verifyOtpHasError: $verifyOtpHasError, registerPhoneNumberHasError: $registerPhoneNumberHasError, registerPhoneNumberIsLoading: $registerPhoneNumberIsLoading, obscure: $obscure, message: $message, uuid: $uuid, sendOtpModel: $sendOtpModel, registerPhoneNumberResModel: $registerPhoneNumberResModel, signInResponseModel: $signInResponseModel, signUpRespModel: $signUpRespModel, verifyOtpResponseModel: $verifyOtpResponseModel, otpRes: $otpRes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.signInIsLoading, signInIsLoading) ||
                other.signInIsLoading == signInIsLoading) &&
            (identical(other.signInHasError, signInHasError) ||
                other.signInHasError == signInHasError) &&
            (identical(other.signUpIsLoading, signUpIsLoading) ||
                other.signUpIsLoading == signUpIsLoading) &&
            (identical(other.signIUPHasError, signIUPHasError) ||
                other.signIUPHasError == signIUPHasError) &&
            (identical(other.isObscure, isObscure) ||
                other.isObscure == isObscure) &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn) &&
            (identical(other.verifyOtpIsLoading, verifyOtpIsLoading) ||
                other.verifyOtpIsLoading == verifyOtpIsLoading) &&
            (identical(other.verifyOtpHasError, verifyOtpHasError) ||
                other.verifyOtpHasError == verifyOtpHasError) &&
            (identical(other.registerPhoneNumberHasError,
                    registerPhoneNumberHasError) ||
                other.registerPhoneNumberHasError ==
                    registerPhoneNumberHasError) &&
            (identical(other.registerPhoneNumberIsLoading,
                    registerPhoneNumberIsLoading) ||
                other.registerPhoneNumberIsLoading ==
                    registerPhoneNumberIsLoading) &&
            (identical(other.obscure, obscure) || other.obscure == obscure) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.sendOtpModel, sendOtpModel) ||
                other.sendOtpModel == sendOtpModel) &&
            (identical(other.registerPhoneNumberResModel,
                    registerPhoneNumberResModel) ||
                other.registerPhoneNumberResModel ==
                    registerPhoneNumberResModel) &&
            (identical(other.signInResponseModel, signInResponseModel) ||
                other.signInResponseModel == signInResponseModel) &&
            (identical(other.signUpRespModel, signUpRespModel) ||
                other.signUpRespModel == signUpRespModel) &&
            (identical(other.verifyOtpResponseModel, verifyOtpResponseModel) ||
                other.verifyOtpResponseModel == verifyOtpResponseModel) &&
            (identical(other.otpRes, otpRes) || other.otpRes == otpRes));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        signInIsLoading,
        signInHasError,
        signUpIsLoading,
        signIUPHasError,
        isObscure,
        isLoggedIn,
        verifyOtpIsLoading,
        verifyOtpHasError,
        registerPhoneNumberHasError,
        registerPhoneNumberIsLoading,
        obscure,
        message,
        uuid,
        sendOtpModel,
        registerPhoneNumberResModel,
        signInResponseModel,
        signUpRespModel,
        verifyOtpResponseModel,
        otpRes
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements AuthState {
  const factory _Initial(
      {required final bool signInIsLoading,
      required final bool signInHasError,
      required final bool signUpIsLoading,
      required final bool signIUPHasError,
      required final bool isObscure,
      required final bool isLoggedIn,
      required final bool verifyOtpIsLoading,
      required final bool verifyOtpHasError,
      required final bool registerPhoneNumberHasError,
      required final bool registerPhoneNumberIsLoading,
      required final bool obscure,
      final String? message,
      final String? uuid,
      final RegisterPhoneNumberModel? sendOtpModel,
      final RegisterPhoneNumberResModel? registerPhoneNumberResModel,
      final SignInResponseModel? signInResponseModel,
      final SignUpRespModel? signUpRespModel,
      final VerifyOtpResponseModel? verifyOtpResponseModel,
      final OtpResponseModel? otpRes}) = _$InitialImpl;

  @override
  bool get signInIsLoading;
  @override
  bool get signInHasError;
  @override
  bool get signUpIsLoading;
  @override
  bool get signIUPHasError;
  @override
  bool get isObscure;
  @override
  bool get isLoggedIn;
  @override
  bool get verifyOtpIsLoading;
  @override
  bool get verifyOtpHasError;
  @override
  bool get registerPhoneNumberHasError;
  @override
  bool get registerPhoneNumberIsLoading;
  @override
  bool get obscure;
  @override
  String? get message;
  @override
  String? get uuid;
  @override
  RegisterPhoneNumberModel? get sendOtpModel;
  @override
  RegisterPhoneNumberResModel? get registerPhoneNumberResModel;
  @override
  SignInResponseModel? get signInResponseModel;
  @override
  SignUpRespModel? get signUpRespModel;
  @override
  VerifyOtpResponseModel? get verifyOtpResponseModel;
  @override
  OtpResponseModel? get otpRes;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
