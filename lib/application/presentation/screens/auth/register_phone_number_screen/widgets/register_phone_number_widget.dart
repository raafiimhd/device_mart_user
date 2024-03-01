import 'package:device/application/bussiness_logic/bloc/auth_bloc/auth_bloc.dart';
import 'package:device/application/presentation/routes/routes.dart';
import 'package:device/application/presentation/widgets/show_snackbar/show_snackbar.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';

class RegisterPhoneNumberWidgets extends StatelessWidget {
  const RegisterPhoneNumberWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final registerNum = context.read<AuthBloc>();
    return SingleChildScrollView(
      child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: LottieBuilder.asset(
            'assets/lottie_files/otp.json',
            height: size.width * 0.5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: registerNum.phoneKey,
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter your number';
                }
                if (value.length != 10) {
                  return 'Enter Valid Phone Number';
                }
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                hintText: 'Enter your number',
                prefixIcon: const Icon(Icons.phone),
              ),
              controller: registerNum.phoneNumberController,
              keyboardType: TextInputType.number,
            ),
          ),
        ),
        const SizedBox(height: 16.0),
        BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
          if (state.registerPhoneNumberResModel != null &&
              state.message != null) {
            messageSnackbar(
                context: context, message: state.message!, isError: false);
            Navigator.of(context).pushNamedAndRemoveUntil(
              Routes.otpVerification,
              (route) => false,
            );
          } else if (state.registerPhoneNumberHasError &&
              state.message != null) {
            print('Erroooooor${state.message}');
            messageSnackbar(
              context: context,
              message: state.message!,
              isError: true,
            );
          }
        }, builder: (context, state) {
          if (state.registerPhoneNumberIsLoading) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: LoadingAnimationWidget.inkDrop(color: kWhite, size: 25),
              ),
            );
          }
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: kBlue,
            ),
            onPressed: () async {
              if (registerNum.phoneKey.currentState!.validate()) {
                registerNum.add(const RegisterPhoneNumber());
              }
            },
            child: const Text('Send OTP'),
          );
        })
      ])),
    );
  }
}
