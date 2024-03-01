import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:flutter/material.dart';

class BorderContainer extends StatelessWidget {
  const BorderContainer({
    super.key,
    required this.string,
  });

  final String string;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: sWidth * 0.07,
      decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(),
              right: BorderSide(),
              left: BorderSide(),
              bottom: BorderSide()),
          borderRadius: BorderRadius.all(kRadius5),
          color: kWhite),
      child: Center(
          child: Text(
        string,
        style: priceStyle,
      )),
    );
  }
}
