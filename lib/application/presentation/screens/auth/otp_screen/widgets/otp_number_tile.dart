import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:flutter/material.dart';

class OTPNumberTIle extends StatelessWidget {
  const OTPNumberTIle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: kBlack)),
      height: sWidth * 0.15,
      width: sWidth * 0.10,
    );
  }
}
