import 'package:device/domain/core/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:device/application/bussiness_logic/bloc/cart/cart_bloc.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/application/presentation/screens/screen_coupon/coupon_tile.dart';
import 'package:iconsax/iconsax.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';


class SceenCoupon extends StatelessWidget {
  const SceenCoupon({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CartBloc>().add(const CartEvent.getCouponEvent());
      
    });
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Apply Coupon', style: priceStyle),
              Container(
                height: sWidth * 0.10,
                width: sWidth * 0.70,
                decoration: BoxDecoration(
                    color: kWhite.withOpacity(0.8),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: const TextField(
                  textCapitalization: TextCapitalization.characters,
                  style: headStyle,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Iconsax.tag,
                      color: kBlack,
                    ),
                  ),
                ),
              ),
              const Divider(),
              Expanded(
                child: BlocBuilder<CartBloc, CartState>(
                  buildWhen: (c, p) => c.coupon != p.coupon,
                  builder: (context, state) {
                    if (state.coupon == null || state.coupon!.isEmpty) {
                      return const Center(
                        child: Text('No Coupons Available'),
                      );
                    }
                    if (state.isLoading) {
                          return Center(
                child: LoadingAnimationWidget.inkDrop(color: kWhite, size: 25));
                    }
                    return ListView.builder(
                      itemCount: state.coupon!.length,
                      itemBuilder: (context, index) => CouponCard(
                        coupon: state.coupon![index],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
