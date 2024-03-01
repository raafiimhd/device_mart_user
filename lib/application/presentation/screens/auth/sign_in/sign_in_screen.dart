import 'package:device/application/bussiness_logic/bloc/auth_bloc/auth_bloc.dart';
import 'package:device/application/presentation/routes/routes.dart';
import 'package:device/application/presentation/widgets/custom/custom_elevated_button/custom_elevated_button.dart';
import 'package:device/application/presentation/widgets/custom/custom_text_field/custom_text_field.dart';
import 'package:device/application/presentation/widgets/show_snackbar/show_snackbar.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final signin = context.read<AuthBloc>();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kWhite,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Hero(
            tag: 'test',
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Form(
                  key: signin.formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      LottieBuilder.asset('assets/lottie_files/login.json',
                          height: size.width * 0.5),
                      Material(
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 17,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      kHeightFive,
                      CustomTextFormField(
                        keyboardType: TextInputType.number,
                        hintText: 'phone Number',
                        controller: signin.phoneNumberController,
                        prefixIcon: Iconsax.mobile,
                      ),
                      CustomTextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        hintText: 'Password',
                        controller: signin.passwordController,
                        prefixIcon: Iconsax.lock,
                        isPassword: true,
                      ),
                      kHeightFive,
                      BlocConsumer<AuthBloc, AuthState>(
                        listener: (context, state) {
                          if (state.message == 'Login success') {
                            messageSnackbar(
                                context: context,
                                message: state.message!,
                                isError: false);
                            Navigator.of(context).pushNamedAndRemoveUntil(
                              Routes.mainpage,
                              (route) => false,
                            );
                          } else if (state.signInHasError) {
                            messageSnackbar(
                              context: context,
                              message: state.message ?? '',
                              isError: true,
                            );
                          }
                        },
                        builder: (context, state) {
                          if (state.isLoggedIn) {
                            return Center(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: LoadingAnimationWidget.inkDrop(
                                    color: kWhite, size: 25),
                              ),
                            );
                          }
                          return CustomElevatedButton(
                            buttonLabel: "Login",
                            onPressed: () {
                              if (signin.formKey.currentState!.validate()) {
                                signin.add(const SignIn());
                              }
                            },
                          );
                        },
                      ),
                      kHeightTen,
                      const Text(
                          "If your not register your number.\n Please register your number First"),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/register');
                        },
                        child: const Text('Register'),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
