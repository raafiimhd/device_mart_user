import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, this.leading, required this.title, this.trailing});
  final IconButton? leading;
  final String title;
  final IconButton? trailing;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: sColor,
      leading: leading,
      title: Text(title, style: kronOne(fontSize: 0.038)),
      actions: [if (trailing != null) trailing!],
    );
  }
}
