import 'package:device/application/bussiness_logic/bloc/profile/profile_bloc.dart';
import 'package:device/application/presentation/screens/settings/widgets/profile/change_text_fom_fieild.dart';
import 'package:device/application/presentation/widgets/custom/custom_appbar/custom_appbar.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/models/profile/edit/edit_user_name_model/edit_user_name_model.dart';
import 'package:device/domain/models/profile/get_profile/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({super.key, required this.data});
  final Data? data;
  @override
  Widget build(BuildContext context) {
    final profileBloc = context.read<ProfileBloc>();
    profileBloc.editNameController.text = data!.username!;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: CustomAppBar(
            title: 'Security',
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back)),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              kHeightTwenty,
              ChangeTextFormFieldWidget(
                  hintText: 'Name',
                  controller: profileBloc.editNameController,
                  prefixIcon: Icons.person,
                  keyboardType: TextInputType.name),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ElevatedButton(
                  style: elevatedButtonStyle,
                  onPressed: () {
                    final newUsername = profileBloc.editNameController.text;
                    profileBloc.add(
                      ProfileEvent.editUserNameEvent(
                        user: EditUserNameModel(name: newUsername),
                      ),
                    );
                    data!.username = newUsername;
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Edit Name',
                    style: TextStyle(color: kWhite),
                  ),
                ),
              ),
              kHeightTwenty,
              const Divider(
                color: kBlack,
              ),
              ChangeTextFormFieldWidget(
                hintText: 'old Password',
                controller: profileBloc.oldPasswordController,
                keyboardType: TextInputType.visiblePassword,
                prefixIcon: Icons.password_sharp,
                isPassword: true,
              ),
              ChangeTextFormFieldWidget(
                hintText: 'New Password',
                controller: profileBloc.newPasswordController,
                keyboardType: TextInputType.visiblePassword,
                prefixIcon: Icons.password,
                isPassword: true,
              ),
              ChangeTextFormFieldWidget(
                hintText: 'Re New Password',
                controller: profileBloc.rePasswordController,
                keyboardType: TextInputType.visiblePassword,
                prefixIcon: Icons.password,
                isPassword: true,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ElevatedButton(
                  style: elevatedButtonStyle,
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    profileBloc.add(const ProfileEvent.verifyPasswordEvent());
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'update password',
                    style: TextStyle(color: kWhite),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
