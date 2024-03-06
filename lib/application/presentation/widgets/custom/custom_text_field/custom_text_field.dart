import 'package:device/application/bussiness_logic/bloc/auth_bloc/auth_bloc.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.hintText,
    this.prefixIcon,
    required this.controller,
    this.maxlines,
    required this.keyboardType,
    this.isPassword = false,
  }) : super(key: key);

  final String hintText;
  final IconData? prefixIcon;
  final TextEditingController controller;
  final int? maxlines;
  final TextInputType keyboardType;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    final signupBloc = context.read<AuthBloc>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        color: kWhite,
        child: BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
          return TextFormField(
            keyboardType: keyboardType,
            maxLines: isPassword ? 1 : maxlines,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please fill $hintText';
              } else if (isPassword &&
                  value != signupBloc.passwordController.text) {
                return 'Passwords do not match';
              } else {
                return null;
              }
            },
            obscureText: isPassword ? state.obscure : false,
            controller: controller,
            decoration: InputDecoration(
              focusedBorder:
                  const OutlineInputBorder(borderSide: BorderSide(color: kBlack)),
              prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
              suffixIcon: isPassword
                  ? IconButton(
                      icon: Icon(
                        state.obscure ? Icons.remove_red_eye : Iconsax.eye,
                        color: kBlack,
                      ),
                      onPressed: () {
                        context.read<AuthBloc>().add(const AuthEvent.obscure());
                      },
                    )
                  : null,
              hintText: hintText,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          );
        }),
      ),
    );
  }
}
