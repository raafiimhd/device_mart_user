part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState(
      {required bool isLoading,
      required bool hasError,
      required bool showList,
      String? message,
      Data? data,
      EditUserNameRespModel? editUserNameRespModel,
      VerifyPasswordRespModel? verifyPasswordRespModel,
      AddStateRespModel? addStateRespModel,
      AddAddressRespModel? addAddressRespModel,
      int? id,
      String? stateName,
      GetAddressRespModel? getAddressRespModel,
      List<GetAddressModel>? getAddressModel,
      DeleteAddressRespModel? deleteAddressRespModel,
      DefaultRespModel? defaultRespModel,
      WalletModel? walletModel,
      WalletHistory? walletHistory,
      WalletRespModel? walletRespModel,
      RefferalResp?refferalResp,
      GetRefferalBonus?getRefferalBonus
      }) = _Initial;

  factory ProfileState.initial() =>
      const ProfileState(isLoading: false, hasError: false, showList: false);
}
