import 'package:device/application/bussiness_logic/bloc/auth_bloc/auth_bloc.dart';
import 'package:device/application/presentation/routes/routes.dart';
import 'package:device/application/presentation/utils/show_snack_bar/show_snack_bar.dart';
import 'package:device/application/presentation/utils/space.dart';
import 'package:device/application/presentation/widgets/custom/custom_elevated_button/custom_elevated_button.dart';
import 'package:device/application/presentation/widgets/custom/custom_text_field/custom_text_field.dart';
import 'package:device/application/presentation/widgets/show_snackbar/show_snackbar.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final signupBloc = context.read<AuthBloc>();
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.signIUPHasError) {
            showSnack(context: context, message: state.message!, color: kRed);
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Stack(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Hero(
                      tag: 'test',
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SingleChildScrollView(
                          child: Form(
                            key: signupBloc.signUpKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                LottieBuilder.asset(
                                    'assets/lottie_files/login.json',
                                    height: size.width * 0.5),
                                Material(
                                  child: Text(
                                    'Sign-Up',
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                                Space.y(10),
                                CustomTextFormField(
                                  keyboardType: TextInputType.name,
                                  hintText: 'Name',
                                  controller: signupBloc.usernameController,
                                  prefixIcon: Iconsax.user,
                                ),
                                CustomTextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  hintText: 'e-mail',
                                  controller: signupBloc.emailController,
                                  prefixIcon: Iconsax.sms,
                                ),
                                Material(
                                  child: CustomTextFormField(
                                    keyboardType: TextInputType.visiblePassword,
                                    hintText: 'Password',
                                    controller: signupBloc.passwordController,
                                    prefixIcon: Iconsax.lock,
                                    isPassword: true,
                                  ),
                                ),
                                Material(
                                  child: CustomTextFormField(
                                    hintText: 'Conform Password',
                                    controller:
                                        signupBloc.conformPasswordController,
                                    keyboardType: TextInputType.visiblePassword,
                                    isPassword: true,
                                    prefixIcon: Iconsax.lock,
                                  ),
                                ),
                                BlocConsumer<AuthBloc, AuthState>(
                                  listener: (context, state) {
                                    if (state.signUpRespModel != null) {
                                      Navigator.of(context)
                                          .pushNamedAndRemoveUntil(
                                              Routes.signInPage,
                                              (route) => false);
                                    } else if (state.signIUPHasError &&
                                        state.message != null) {
                                      messageSnackbar(
                                          context: context,
                                          message: state.message!,
                                          isError: true);
                                    }
                                  },
                                  builder: (context, state) {
                                    if (state.signUpIsLoading) {
                                      return Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: LoadingAnimationWidget.inkDrop(
                                              color: kBlack, size: 25),
                                        ),
                                      );
                                    }
                                    return CustomElevatedButton(
                                      buttonLabel: "Signup",
                                      onPressed: () {
                                        if (signupBloc.signUpKey.currentState!
                                            .validate()) {
                                          FocusScope.of(context).unfocus();
                                          signupBloc.add(const SignUP());
                                        }
                                      },
                                    );
                                  },
                                ),
                                Space.y(10),
                                const Material(
                                    child: Text("Already have an account?")),
                                Material(
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .pushReplacementNamed(
                                              Routes.signInPage);
                                    },
                                    child: const Text(
                                      'Sign In',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w900,
                                          color: kBlack),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
