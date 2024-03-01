import 'package:device/application/bussiness_logic/bloc/cart/cart_bloc.dart';
import 'package:device/application/presentation/screens/cart/widgets/bottom_shit_out_session_widget.dart';
import 'package:device/application/presentation/screens/cart/widgets/cart_list_tile.dart';
import 'package:device/application/presentation/utils/show_snack_bar/show_snack_bar.dart';
import 'package:device/application/presentation/widgets/custom/custom_appbar/custom_appbar.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/models/cart_and_coupon/get_cart_model/get_cart_qurrey_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';

class ScreenCart extends StatelessWidget {
  const ScreenCart({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<CartBloc>().add(
            CartEvent.getCartEvent(
              getCartQurreyModel: GetCartQurreyModel(page: 1, count: 30),
            ),
          );
    });
    return Scaffold(
      backgroundColor: kWhite,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: CustomAppBar(title: 'Shopping Cart')),
      body: BlocConsumer<CartBloc, CartState>(
        listener: (context, state) {
          if (state.hasError) {
            showSnack(context: context, message: state.message!, color: kRed);
          }
        },
        builder: (context, state) {
          if (state.isLoading) {
            return Center(
              child: LoadingAnimationWidget.inkDrop(color: kWhite, size: 25),
            );
          } else if (state.getCartRespModel == null ||
              state.getCartRespModel!.data == null ||
              state.getCartRespModel!.data!.items == null ||
              state.getCartRespModel!.data!.items!.isEmpty) {
            return Center(
              child: LottieBuilder.asset(
                  'assets/lottie_files/Animation - 1704957048076.json',
                  fit: BoxFit.cover,
                  height: size.width * 0.9),
            );
          } else if (state.getCartRespModel != null &&
              state.getCartRespModel!.data!.items!.isNotEmpty) {
            return ListView.builder(
                itemCount: state.getCartRespModel!.data!.items!.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: sWidth,
                    height: sWidth * 0.40,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: double.infinity,
                        child: CartListTileWidget(
                          cart: state.getCartRespModel!.data!.items![index],
                        ),
                      ),
                    ),
                  );
                });
          } else {
            return Center(
              child: LottieBuilder.asset(
                  'assets/lottie_files/Animation - 1704957048076.json',
                  fit: BoxFit.cover,
                  height: size.width * 0.9),
            );
          }
        },
      ),
      bottomNavigationBar: const BottomCheckOutSession(),
    );
  }
}
