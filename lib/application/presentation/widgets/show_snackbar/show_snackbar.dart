import 'package:device/domain/core/color/colors.dart';
import 'package:flutter/material.dart';

void messageSnackbar(
    {required BuildContext context,
    required String message,
    bool isError = true}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    backgroundColor: isError ? kRed : kGreen,
  ));
}
