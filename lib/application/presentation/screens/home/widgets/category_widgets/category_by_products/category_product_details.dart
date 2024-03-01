import 'package:device/application/bussiness_logic/bloc/inventory/inventory_bloc.dart';
import 'package:device/application/presentation/screens/home/widgets/category_widgets/category_by_products/category_by_products.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CatogoryListViews extends StatelessWidget {
  const CatogoryListViews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: BlocBuilder<InventoryBloc, InventoryState>(
          builder: (context, state) {
            if (state.isLoading) {
              return Center(
                child: LoadingAnimationWidget.inkDrop(color: kWhite, size: 25),
              );
            }
            if (state.hasError || state.inventoryRespModel == null) {
              return Center(child: Text('Nothing to show ', style: kronOne()));
            }
            return ListView.builder(
                itemCount: state.inventoryRespModel!.data!.length,
                itemBuilder: (context, index) => CategoryDetailContainer(
                      inventory: state.inventoryRespModel!.data![index],
                    ));
          },
        ),
      ),
    );
  }
}
