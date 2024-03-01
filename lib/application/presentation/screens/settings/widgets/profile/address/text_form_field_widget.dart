import 'package:device/domain/core/color/colors.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidgetForUpdate extends StatelessWidget {
  const TextFormFieldWidgetForUpdate({
    Key? key,
    required this.hintText,
    this.prefixIcon,
    required this.controller,
    this.maxlines,
    required this.keyboardType,
    this.isPassword = false,
  }) : super(key: key);

  final String hintText;
  final IconData? prefixIcon;
  final TextEditingController controller;
  final int? maxlines;
  final TextInputType keyboardType;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
            color: kWhite,
            child: TextFormField(
              keyboardType: keyboardType,
              maxLines: isPassword ? 1 : maxlines,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please fill $hintText';
                } else {
                  return null;
                }
              },
              controller: controller,
              decoration: InputDecoration(
                prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
                hintText: hintText,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            )));
  }
}
