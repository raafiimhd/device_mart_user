import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kWhite,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: LottieBuilder.asset(
                  'assets/lottie_files/splash_screen.json',
                  height: size.width * 0.5),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 66, 209, 178)),
                onPressed: () {
                  Navigator.of(context).pushNamed('/register');
                },
                child: const Text(
                  'Create Account',
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            kHeightTwenty,
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: kBlue,
                    fixedSize: const Size.fromWidth(200)),
                onPressed: () {
                  Navigator.of(context).pushNamed('/sign_in');
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
