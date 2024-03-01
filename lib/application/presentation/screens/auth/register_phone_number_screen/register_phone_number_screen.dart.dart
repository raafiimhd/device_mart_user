import 'package:device/application/presentation/screens/auth/register_phone_number_screen/widgets/register_phone_number_widget.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:flutter/material.dart';

class RegisterPhoneNumberScreen extends StatelessWidget {
  const RegisterPhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Register Your Phone Number',
            style: TextStyle(color: kBlack, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: const RegisterPhoneNumberWidgets());
  }
}
