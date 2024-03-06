import 'package:device/application/presentation/screens/main_page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationScreen extends StatelessWidget {
  AnimationScreen({super.key,  required this.id});
  int id;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      Future.delayed(
        const Duration(seconds: 3),
        () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => MainPage()),
          );
        },
      );
    });
    return Scaffold(
      body: Center(
        child: LottieBuilder.asset(
          id == 1
              ? 'assets/lottie_files/Animation - 1708492620048.json'
              : id == 3
                  ? 'assets/lottie_files/Animation - 1709034220459.json'
                  : '',
          fit: BoxFit.cover,
          height: size.width * 0.9,
        ),
      ),
    );
  }
}
