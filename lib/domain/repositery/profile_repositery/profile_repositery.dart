import 'package:dartz/dartz.dart';
import 'package:device/domain/core/constants/error_msg.dart';
import 'package:device/domain/models/profile/address/add_address/add_address_model.dart';
import 'package:device/domain/models/profile/address/add_address/add_address_resp_model.dart';
import 'package:device/domain/models/profile/address/add_state_resp_model/add_state_resp_model.dart';
import 'package:device/domain/models/profile/address/default_address/default_resp_model/default_resp_model.dart';
import 'package:device/domain/models/profile/address/default_address/id_qurrey_model.dart';
import 'package:device/domain/models/profile/address/delete_address/delete_address_model.dart';
import 'package:device/domain/models/profile/address/delete_address/delete_address_resp_model.dart';
import 'package:device/domain/models/profile/address/get_address/get_address_resp_model.dart';
import 'package:device/domain/models/profile/edit/change_password_model/change_password_model.dart';
import 'package:device/domain/models/profile/edit/edit_user_name_model/edit_user_name_model.dart';
import 'package:device/domain/models/profile/edit/edit_user_name_model/edit_user_name_model_resp.dart';
import 'package:device/domain/models/profile/edit/verify_password_model/verify_password_model.dart';
import 'package:device/domain/models/profile/edit/verify_password_model/verify_password_resp_model.dart';
import 'package:device/domain/models/profile/get_profile/profile.dart';
import 'package:device/domain/models/profile/get_refferal_bonus/get_refferal_bonus.dart';
import 'package:device/domain/models/profile/wallet_history/wallet_history.dart';
import 'package:device/domain/models/profile/wallet_model/wallet_model.dart';
import 'package:device/domain/models/profile/wallet_resp_model/wallet_rep_model.dart';

abstract class ProfileRepositery {
  Future<Either<ErrorMsg, Profile>> getProfile();
  Future<Either<ErrorMsg, EditUserNameRespModel>> editUserName(
      {required EditUserNameModel user});
  Future<Either<ErrorMsg, VerifyPasswordRespModel>> verifyPassword(
      {required VerifyPasswordModel verifyPasswordModel});
  Future<Either<ErrorMsg, VerifyPasswordRespModel>> changePassword(
      {required ChangePasswordModel changePasswordModel});
  Future<Either<ErrorMsg, AddStateRespModel>> addState();
  Future<Either<ErrorMsg, AddAddressRespModel>> addAddress(
      {required AddAddressModel addAddressModel});

  Future<Either<ErrorMsg, GetAddressRespModel>> getAddress();
  Future<Either<ErrorMsg, DeleteAddressRespModel>> deleteAddress(
      {required DeleteAddressModel deleteAddressModel});
  Future<Either<ErrorMsg, DefaultRespModel>> defaultAddress(
      {required IdQurreyModel idQurreyModel});
  Future<Either<ErrorMsg, WalletModel>> getUserWallet();
  Future<Either<ErrorMsg, WalletHistory>> getWalletHistory();
  Future<Either<ErrorMsg, WalletRespModel>> createWallet();
  Future<Either<ErrorMsg, GetRefferalBonus>> getRefferalBonus();
}
