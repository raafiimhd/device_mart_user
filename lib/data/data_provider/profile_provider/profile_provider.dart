
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:device/domain/core/constants/api_endpoint/api_endpoint.dart';
import 'package:device/domain/core/constants/const.dart';
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
import 'package:device/domain/repositery/profile_repositery/profile_repositery.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProfileRepositery)
@injectable
class ProfileProvider implements ProfileRepositery {
  final Dio dio;
  final FlutterSecureStorage secureStorage;

  ProfileProvider(this.dio, this.secureStorage);
  @override
  Future<Either<ErrorMsg, Profile>> getProfile() async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.get(ApiEndPoint.profileEndPoint);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(Profile.fromJson(response.data));
      } else {
        return Left(
            ErrorMsg(message: Profile.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, EditUserNameRespModel>> editUserName(
      {required EditUserNameModel user}) async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response =
          await dio.post(ApiEndPoint.editUserNameEndPoint, data: user.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(EditUserNameRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: EditUserNameRespModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, VerifyPasswordRespModel>> verifyPassword(
      {required VerifyPasswordModel verifyPasswordModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.post(ApiEndPoint.verifyPassWordEndPoint,
          data: verifyPasswordModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(VerifyPasswordRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: VerifyPasswordRespModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, VerifyPasswordRespModel>> changePassword(
      {required ChangePasswordModel changePasswordModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }

      final response = await dio.post(
          ApiEndPoint.baseUrl + ApiEndPoint.changePasswordEndPoint,
          data: changePasswordModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(VerifyPasswordRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: VerifyPasswordRespModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, AddStateRespModel>> addState() async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }

      final response = await dio.get(ApiEndPoint.stateAddEndPoint);
      if (response.statusCode == 200) {
        return Right(AddStateRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: AddStateRespModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, AddAddressRespModel>> addAddress(
      {required AddAddressModel addAddressModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.post(ApiEndPoint.addAddressEndPoint,
          data: addAddressModel.toJson());
      if (response.statusCode == 200) {
        return Right(AddAddressRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: AddAddressRespModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, GetAddressRespModel>> getAddress() async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.get(ApiEndPoint.getAddressEndPoint);
      if (response.statusCode == 200) {
        return Right(GetAddressRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: GetAddressRespModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, DeleteAddressRespModel>> deleteAddress(
      {required DeleteAddressModel deleteAddressModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }

      final response = await dio.delete(ApiEndPoint.baseUrl +
          ApiEndPoint.deleteAddressEndPoint
              .replaceFirst('{addressID}', deleteAddressModel.id.toString()));
      if (response.statusCode == 200) {
        return Right(DeleteAddressRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: DeleteAddressRespModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, DefaultRespModel>> defaultAddress(
      {required IdQurreyModel idQurreyModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }

      final response = await dio.put(ApiEndPoint.baseUrl +
          ApiEndPoint.defaultAddressEndPoint
              .replaceFirst('{addressID}', idQurreyModel.id.toString()));
      if (response.statusCode == 200) {
        return Right(DefaultRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: DefaultRespModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

 
  @override
  Future<Either<ErrorMsg, WalletModel>> getUserWallet() async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.get(ApiEndPoint.getWalletEndPoint);
      if (response.statusCode == 200) {
        return Right(WalletModel.fromJson(response.data));
      } else {
        return Left(
            ErrorMsg(message: WalletModel.fromJson(response.data).message!));
      }
    }  on DioException catch (dioError) {
      log('Requested URL: ${dioError.requestOptions.uri}');
      log('dio error => ${dioError.message.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      log('dio error => ${e.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, WalletHistory>> getWalletHistory() async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }

      final response = await dio.get(ApiEndPoint.getWalletHistoryEndPoint);
      if (response.statusCode == 200) {
        return Right(WalletHistory.fromJson(response.data));
      } else {
        return Left(
            ErrorMsg(message: WalletHistory.fromJson(response.data).message!));
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

  @override
  Future<Either<ErrorMsg, WalletRespModel>> createWallet() async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.post(ApiEndPoint.createWalletEndPoint);
      if (response.statusCode == 200) {
        return Right(WalletRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: WalletRespModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, GetRefferalBonus>> getRefferalBonus() async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.get(ApiEndPoint.getRefferalBonusEndPoint);
      if (response.statusCode == 200) {
        return Right(GetRefferalBonus.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: GetAddressRespModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }
}
