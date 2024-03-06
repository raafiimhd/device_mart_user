import 'package:device/application/bussiness_logic/bloc/profile/profile_bloc.dart';
import 'package:device/application/presentation/screens/settings/widgets/profile/address/add_state_widget.dart';
import 'package:device/application/presentation/screens/settings/widgets/profile/address/get_address_widget.dart';
import 'package:device/application/presentation/utils/show_snack_bar/show_snack_bar.dart';
import 'package:device/application/presentation/widgets/custom/custom_appbar/custom_appbar.dart';
import 'package:device/application/presentation/widgets/custom/custom_text_field/custom_text_field.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/models/profile/address/add_address/add_address_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final profileBloc = context.read<ProfileBloc>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<ProfileBloc>().add(
            const ProfileEvent.getAddressEvent(),
          );
    });

    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: CustomAppBar(title: 'User Address')),
      body: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          if (state.hasError) {
            showSnack(
                context: context,
                message: 'Can\nt add address',
                color: state.hasError ? kRed : kGreen);
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Form(
              key: profileBloc.addressFormKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    kHeightTen,
                    CustomTextFormField(
                        hintText: 'Name',
                        controller: profileBloc.nameController,
                        keyboardType: TextInputType.name),
                    CustomTextFormField(
                        hintText: 'Address line',
                        controller: profileBloc.addressLineController,
                        keyboardType: TextInputType.streetAddress),
                    CustomTextFormField(
                        hintText: 'Alternative Phone',
                        controller: profileBloc.alternativePhoneController,
                        keyboardType: TextInputType.phone),
                    CustomTextFormField(
                        hintText: 'District',
                        controller: profileBloc.districtController,
                        keyboardType: TextInputType.streetAddress),
                    CustomTextFormField(
                        hintText: 'Landmark',
                        controller: profileBloc.landmarkController,
                        keyboardType: TextInputType.streetAddress),
                    CustomTextFormField(
                        hintText: 'Locality',
                        controller: profileBloc.localityController,
                        keyboardType: TextInputType.streetAddress),
                    CustomTextFormField(
                        hintText: 'Phone Number',
                        controller: profileBloc.phoneController,
                        keyboardType: TextInputType.phone),
                    CustomTextFormField(
                        hintText: 'pincode',
                        controller: profileBloc.pincodecontroller,
                        keyboardType: TextInputType.number),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const AddStateWidget(),
                        ElevatedButton(
                            style: elevatedButtonStyle,
                            onPressed: () {
                              if (profileBloc.addressFormKey.currentState!
                                  .validate()) {
                                profileBloc.add(ProfileEvent.addAddressEvent(
                                    addAddressModel: AddAddressModel(
                                        addressLine: profileBloc
                                            .addressLineController.text,
                                        altPhone: profileBloc
                                            .alternativePhoneController.text,
                                        district:
                                            profileBloc.districtController.text,
                                        id: state.id,
                                        landmark: profileBloc.landmarkController.text,
                                        locality:
                                            profileBloc.localityController.text,
                                        name: profileBloc.nameController.text,
                                        phoneNumber:
                                            profileBloc.phoneController.text,
                                        pincode: profileBloc
                                            .pincodecontroller.text)));
                              }
                            },
                            child: const Text(
                              'Save',
                              style: TextStyle(color: kWhite),
                            )),
                        const Divider(
                          color: kBlack,
                        ),
                        const GetAddressWidget()
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
