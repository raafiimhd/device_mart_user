import 'package:device/application/bussiness_logic/bloc/cart/cart_bloc.dart';
import 'package:device/application/presentation/screens/screen_coupon/coupon_tile.dart';
import 'package:device/application/presentation/utils/show_snack_bar/show_snack_bar.dart';
import 'package:device/application/presentation/widgets/custom/custom_appbar/custom_appbar.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SceenCoupon extends StatelessWidget {
  const SceenCoupon({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CartBloc>().add(const CartEvent.getCouponEvent());
    });
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: CustomAppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: kBlack,
                  )),
              title: 'Coupon For You')),
      body: BlocConsumer<CartBloc, CartState>(listener: (context, state) {
        if (state.hasError) {
          showSnack(context: context, message: state.message!, color: kRed);
        }
      }, builder: (context, state) {
        if (state.isLoading) {
          return Center(
              child: LoadingAnimationWidget.inkDrop(color: kWhite, size: 25));
        }
        if (state.coupon == null || state.coupon!.isEmpty) {
          return const Center(
            child: Text('No coupons available'),
          );
        }
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: state.coupon!.length,
              itemBuilder: (context, index) =>
                  CouponCard(coupon: state.coupon![index])),
        );
      }),
    );
  }
}
