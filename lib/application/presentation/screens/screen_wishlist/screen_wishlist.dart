import 'package:device/application/bussiness_logic/bloc/wishlist/wishlist_bloc.dart';
import 'package:device/application/presentation/screens/screen_wishlist/widget/wislist_tile.dart';
import 'package:device/application/presentation/utils/show_snack_bar/show_snack_bar.dart';
import 'package:device/application/presentation/widgets/custom/custom_appbar/custom_appbar.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/models/wishlist_models/get_wishlist/get_wishlist_qurrey_model/get_wishlist_qurrey_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';

class ScreenWishList extends StatelessWidget {
  const ScreenWishList({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<WishlistBloc>().add(
            WishlistEvent.getWishlistEvent(
              getWishlistQurreyModel:
                  GetWishlistQurreyModel(page: 1, count: 30),
            ),
          );
    });
    return Scaffold(
      backgroundColor: kWhite,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: CustomAppBar(title: 'Wishlist')),
      body: BlocConsumer<WishlistBloc, WishlistState>(
        listener: (context, state) {
          if (state.hasError) {
            showSnack(context: context, message: state.message!, color: kRed);
          }
        },
        builder: (context, state) {
          if (state.isLoading) {
            return Center(
                child: LoadingAnimationWidget.inkDrop(color: kWhite, size: 25));
          } else if (state.getWishlistRespModel != null &&
              state.getWishlistRespModel!.data != null &&
              state.getWishlistRespModel!.data!.isNotEmpty) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  shrinkWrap: true,
                  primary: false,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.50,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20),
                  itemCount: state.getWishlistRespModel!.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return WislistTile(
                      inventory: state.getWishlistRespModel!.data![index],
                      state: state,
                    );
                  }),
            );
          } else {
            return Center(
              child: LottieBuilder.asset(
                  'assets/lottie_files/Animation - 1704814166572.json',
                  fit: BoxFit.cover,
                  height: size.width * 0.9),
            );
          }
        },
      ),
    );
  }
}
