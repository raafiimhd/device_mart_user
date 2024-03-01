import 'dart:async';
import 'package:device/application/bussiness_logic/cubit/splash_screen_cubit/splash_screen_cubit.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    sizeFinder(context);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      String nextRoute =
          await context.read<SplashScreenCubit>().nextScreenRoute();
      Future.delayed(
        const Duration(seconds: 2),
        () {
          Navigator.of(context).pushReplacementNamed(nextRoute);
        },
      );
    });
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          LottieBuilder.asset(
              'assets/lottie_files/Animation - 1707967437095.json',
              height: size.height * 0.4),
          Material(
            child: Text(
              'Device Mart ',
              style: kronOne(color: kBlack, fontSize: 0.10),
            ),
          ),
        ]),
      ),
    );
  }
}
