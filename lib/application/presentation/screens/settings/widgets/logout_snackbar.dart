import 'package:device/application/bussiness_logic/bloc/auth_bloc/auth_bloc.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<dynamic> logoutDialoge(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Are you sure?'),
      content: RichText(
          text: const TextSpan(
              text: "If you want to logout click ",
              style: TextStyle(color: kBlack),
              children: [
            TextSpan(
                text: " Confirm ",
                style: TextStyle(fontWeight: FontWeight.w800, color: kBlack)),
            TextSpan(text: 'else click'),
            TextSpan(
                text: ' Cancel ',
                style: TextStyle(fontWeight: FontWeight.w800, color: kBlack))
          ])),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel')),
        ElevatedButton(
            onPressed: () async {
              await context.read<AuthBloc>().logout();
              Future.delayed(
                const Duration(microseconds: 500),
                () {
                  Navigator.of(context).pushNamed('/sign_in');
                },
              );
            },
            child: const Text('Confirm'))
      ],
    ),
  );
}
