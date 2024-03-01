import 'package:device/application/presentation/screens/order/widgets/my_order_body.dart';
import 'package:device/application/presentation/widgets/custom/custom_appbar/custom_appbar.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:flutter/material.dart';

class ScreenOrder extends StatelessWidget {
  const ScreenOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kWhite,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: CustomAppBar(title: 'Order')),
      body: MyOrderBody(),
    );
  }
}
