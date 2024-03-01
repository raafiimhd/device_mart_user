import 'package:device/application/bussiness_logic/bloc/auth_bloc/auth_bloc.dart';
import 'package:device/application/presentation/routes/routes.dart';
import 'package:device/application/presentation/widgets/custom/custom_appbar/custom_appbar.dart';
import 'package:device/application/presentation/widgets/show_snackbar/show_snackbar.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ScreenOTPVerification extends StatelessWidget {
  const ScreenOTPVerification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final otpRes = context.read<AuthBloc>();
    return Scaffold(
      backgroundColor: kWhite,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: CustomAppBar(
            title: 'Verify OTP',
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/register');
                },
                icon: const Icon(Icons.arrow_back)),
          )),
      body: SafeArea(
        child: Form(
          key: otpRes.otpKey,
          child: Row(
            children: [
              SizedBox(
                width: sWidth * 0.10,
              ),
              SizedBox(
                width: sWidth * 0.80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Verify otp',
                      style: kronOne(color: kBlack, fontSize: 0.06),
                    ),
                    kHeightTen,
                    Text(
                      'phone number provided',
                      style: kronOne(
                          color: kBlack.withOpacity(0.8), fontSize: 0.03),
                    ),
                    Text(
                      otpRes.phoneNumberController.text.trim(),
                      style: kronOne(color: kBlue, fontSize: 0.03),
                    ),
                    kHeight50,
                    Stack(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please fill Number';
                            } else {
                              return null;
                            }
                          },
                          controller: otpRes.phoneNumberController,
                          maxLength: 4,
                          keyboardType: TextInputType.number,
                          style: GoogleFonts.kronaOne(
                              letterSpacing: sWidth * 0.095,
                              fontSize: 0.1 * sWidth,
                              fontWeight: FontWeight.normal,
                              color: kBlack),
                        ),
                      ],
                    ),
                    kHeightTen,
                    BlocConsumer<AuthBloc, AuthState>(
                      listener: (context, state) {
                        if (state.verifyOtpResponseModel != null) {
                          Navigator.pushNamedAndRemoveUntil(
                              context, Routes.signUpPage, (route) => false);
                        } else if (state.verifyOtpHasError &&
                            state.message != null) {
                          messageSnackbar(
                              context: context,
                              message: state.message!,
                              isError: true);
                        }
                      },
                      builder: (context, state) {
                        if (state.verifyOtpIsLoading) {
                          return Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: LoadingAnimationWidget.inkDrop(
                                  color: kWhite, size: 25),
                            ),
                          );
                        } else {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Resend',
                                  style: kronOne(color: kBlack),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  if (otpRes.otpKey.currentState!.validate()) {
                                    otpRes.add(const VerifyOtp());
                                  }
                                },
                                child: Text(
                                  'Submit',
                                  style: kronOne(color: kBlue),
                                ),
                              )
                            ],
                          );
                        }
                      },
                    ),
                    kHeight50
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
