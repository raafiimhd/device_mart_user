import 'package:device/application/bussiness_logic/bloc/cart/cart_bloc.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/models/cart_and_coupon/coupon/apply_coupon/apply_coupon.dart';
import 'package:device/domain/models/cart_and_coupon/coupon/get_coupon_model/get_coupon_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CouponCard extends StatelessWidget {
  const CouponCard({
    super.key,
    required this.coupon,
  });

  final GetCouponModel coupon;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 222, 221, 221),
                offset: Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ),
              BoxShadow(
                color: kWhite,
                offset: Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          width: screenWidth,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coupon.code!,
                  style: const TextStyle(
                      fontSize: 14,
                      fontFamily: AutofillHints.oneTimeCode,
                      fontWeight: FontWeight.w500),
                ),
                kHeightTen,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ' ${coupon.discountPer} % Discount',
                      style: const TextStyle(
                          fontFamily: AutofillHints.password,
                          fontSize: 14,
                          color: kGreen),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<CartBloc>().add(
                            CartEvent.applyCouponEvent(getCouponModel: coupon));
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        'Apply Coupon',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: kBlue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
