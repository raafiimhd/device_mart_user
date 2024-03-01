import 'package:bloc/bloc.dart';
import 'package:device/data/data_provider/profile_provider/profile_provider.dart';
import 'package:device/domain/models/profile/address/add_address/add_address_model.dart';
import 'package:device/domain/models/profile/address/add_address/add_address_resp_model.dart';
import 'package:device/domain/models/profile/address/add_state_resp_model/add_state_resp_model.dart';
import 'package:device/domain/models/profile/address/default_address/default_resp_model/default_resp_model.dart';
import 'package:device/domain/models/profile/address/default_address/id_qurrey_model.dart';
import 'package:device/domain/models/profile/address/delete_address/delete_address_model.dart';
import 'package:device/domain/models/profile/address/delete_address/delete_address_resp_model.dart';
import 'package:device/domain/models/profile/address/get_address/get_address_model.dart';
import 'package:device/domain/models/profile/address/get_address/get_address_resp_model.dart';
import 'package:device/domain/models/profile/edit/change_password_model/change_password_model.dart';
import 'package:device/domain/models/profile/edit/edit_user_name_model/edit_user_name_model.dart';
import 'package:device/domain/models/profile/edit/edit_user_name_model/edit_user_name_model_resp.dart';
import 'package:device/domain/models/profile/edit/verify_password_model/verify_password_model.dart';
import 'package:device/domain/models/profile/edit/verify_password_model/verify_password_resp_model.dart';
import 'package:device/domain/models/profile/get_profile/data.dart';
import 'package:device/domain/models/profile/get_refferal_bonus/get_refferal_bonus.dart';
import 'package:device/domain/models/profile/refferal_bonus_qurrey/rafferal_resp.dart';
import 'package:device/domain/models/profile/refferal_bonus_qurrey/refferal_bonus_qurrey.dart';
import 'package:device/domain/models/profile/wallet_history/wallet_history.dart';
import 'package:device/domain/models/profile/wallet_model/wallet_model.dart';
import 'package:device/domain/models/profile/wallet_resp_model/wallet_rep_model.dart';
import 'package:device/domain/repositery/profile_repositery/profile_repositery.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final TextEditingController editNameController = TextEditingController();
  final GlobalKey<FormState> changeFormKey = GlobalKey<FormState>();
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController rePasswordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final GlobalKey<FormState> addressFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> updateAddressFormKey = GlobalKey<FormState>();
  final TextEditingController localityController = TextEditingController();
  final TextEditingController addressLineController = TextEditingController();
  final TextEditingController alternativePhoneController =
      TextEditingController();
  final TextEditingController districtController = TextEditingController();
  final TextEditingController landmarkController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController pincodecontroller = TextEditingController();
  GetAddressModel? defaultAddress;
  final ProfileRepositery repositery;
  final ProfileProvider profileProvider =
      ProfileProvider(Dio(), const FlutterSecureStorage());

  ProfileBloc(this.repositery) : super(ProfileState.initial()) {
    on<_GetProfileEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await repositery.getProfile();
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false, message: failure.message, hasError: true)),
          (resp) => emit(state.copyWith(
              isLoading: false,
              message: resp.message,
              data: resp.data,
              hasError: false)));
    });
    on<_EditUserNameEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await repositery.editUserName(user: event.user);

      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true,
              message: 'Can\nt Update',
              isLoading: false)), (resp) {
        emit(state.copyWith(
            hasError: false,
            isLoading: false,
            message: resp.message,
            editUserNameRespModel: resp));
        add(const ProfileEvent.getProfileEvent());
      });
    });
    on<VerifyPasswordEvent>((event, emit) async {
      try {
        final result = await repositery.verifyPassword(
            verifyPasswordModel:
                VerifyPasswordModel(oldPassword: oldPasswordController.text));
        await result.fold((l) => throw Exception('Something Error'),
            (resp) async {
          if (resp.statusCode == 200) {
            final changePasswordResult = await profileProvider.changePassword(
                changePasswordModel: ChangePasswordModel(
                    uuid: resp.data!.uuid,
                    newPassword: newPasswordController.text,
                    reNewPassword: rePasswordController.text));
            changePasswordResult.fold(
                (failure) => throw Exception('Something went wrong'), (resp) {
              emit(state.copyWith(
                  hasError: false,
                  isLoading: false,
                  message: resp.message,
                  verifyPasswordRespModel: resp));
              add(const ProfileEvent.getProfileEvent());
            });
          }
        });
      } catch (e) {
        emit(state.copyWith(
            isLoading: false, hasError: true, message: 'Something went Wrong'));
      }
    });
    on<AddStateEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await repositery.addState();
      result.fold(
          (l) => 'Something Error',
          (resp) => emit(state.copyWith(
              hasError: false,
              isLoading: false,
              message: resp.message,
              addStateRespModel: resp)));
    });

    on<AddAddressEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result =
          await repositery.addAddress(addAddressModel: event.addAddressModel);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: failure.message)), (resp) {
        emit(state.copyWith(
            isLoading: false,
            addAddressRespModel: resp,
            hasError: false,
            message: resp.message));
        clearController();
        add(const ProfileEvent.getAddressEvent());
      });
    });
    on<SelectStateEvent>((event, emit) {
      emit(state.copyWith(id: event.stateId, stateName: event.stateName));
    });

    on<GetAddressEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await repositery.getAddress();
      result.fold(
        (failure) => emit(state.copyWith(
          isLoading: false,
          hasError: true,
          message: failure.message,
        )),
        (resp) {
          if (resp.data != null && resp.data!.isNotEmpty) {
            defaultAddress =
                resp.data!.firstWhere((element) => element.isDefault!);
          } else {
            defaultAddress = null;
          }
          emit(state.copyWith(
            hasError: false,
            getAddressModel: resp.data,
            message: resp.message,
            isLoading: false,
          ));
        },
      );
    });

    on<DeleteAddressEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await repositery.deleteAddress(
          deleteAddressModel: event.deleteAddressModel);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: failure.message)), (resp) {
        emit(state.copyWith(
            isLoading: false,
            hasError: false,
            message: resp.message,
            deleteAddressRespModel: resp));
        add(const ProfileEvent.getAddressEvent());
      });
    });

    on<DefaultAddressEvent>((event, emit) async {
      defaultAddress = event.getAddressModel;
      final result = await repositery.defaultAddress(
          idQurreyModel: IdQurreyModel(id: event.getAddressModel.id));
      result.fold(
          (l) => emit(state.copyWith(hasError: true, message: l.message)),
          (r) => emit(state.copyWith(hasError: false, message: r.message,defaultRespModel: r)));
    });
    on<ShowListEvent>(
        (event, emit) => emit(state.copyWith(showList: !state.showList)));

    on<GetWalletEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await repositery.getUserWallet();
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true,
              isLoading: false,
              message: 'Please Create a Wallet')),
          (resp) => emit(state.copyWith(
              isLoading: false,
              hasError: false,
              walletModel: resp,
              message: resp.message)));
    });
    on<GetWalletHistoryEvent>((event, emit) async {
      final result = await repositery.getWalletHistory();
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: 'Please Create a Wallet')),
          (resp) => emit(state.copyWith(
              isLoading: false,
              walletHistory: resp,
              hasError: false,
              message: resp.message)));
    });

    on<CreateWalletEvent>((event, emit) async {
      final result = await repositery.createWallet();
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: 'User already have a wallet')), (resp) {
        emit(state.copyWith(
            hasError: false, message: resp.message, walletRespModel: resp));
        add(ProfileEvent.getWalletEvent());
      });
    });
    on<GetRefferalBonusEvent>((event, emit) async {
      try {
        final result = await repositery.getRefferalBonus();
        await result.fold((l) => throw Exception('Something Wrong'),
            (resp) async {
          if (resp.statusCode == 200) {
            final newResult = await profileProvider.refferalBonus(
                refferalBonusQurrey:
                    RefferalBonusQurrey(code: resp.data!.refferalCode));
            newResult.fold(
                (failure) => emit(state.copyWith(
                    hasError: true, message: 'Not allowed to use this coupon')),
                (resp) => emit(state.copyWith(
                    hasError: false,
                    refferalResp: resp,
                    message: resp.message)));
          }
        });
      } catch (e) {
        emit(state.copyWith(
            isLoading: false, hasError: true, message: 'Something went Wrong'));
      }
    });
  }

  void clearController() {
    nameController.clear();
    localityController.clear();
    addressLineController.clear();
    alternativePhoneController.clear();
    districtController.clear();
    landmarkController.clear();
    phoneController.clear();
    pincodecontroller.clear();
  }
}
