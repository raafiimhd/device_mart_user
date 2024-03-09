import 'package:device/application/bussiness_logic/bloc/inventory/inventory_bloc.dart';
import 'package:device/application/presentation/screens/search/widgets/search_list_tile.dart';
import 'package:device/application/presentation/utils/show_snack_bar/show_snack_bar.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';
 
class SearchListWidgets extends StatelessWidget {
  const SearchListWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocConsumer<InventoryBloc, InventoryState>(
        listener: (context, state) {
      if (state.hasError) {
        showSnack(context: context, message: state.message!, color: kRed);
      }
    }, builder: (context, state) {
      if (state.isLoading) {
        return Center(
            child: LoadingAnimationWidget.inkDrop(color: kWhite, size: 25));
      } else if (state.inventories != null) {
        return GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.20,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20),
            itemCount: state.inventories!.length,
            itemBuilder: (BuildContext context, int index) {
              return SearchListTileWidget(inventory: state.inventories![index]);
            });
      } else {
        return Center(
          child: LottieBuilder.asset('assets/lottie_files/search_empty.json',
              fit: BoxFit.cover, height: size.width * 0.9),
        );
      }
    });
  }
}
