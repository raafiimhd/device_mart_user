import 'package:device/application/bussiness_logic/bloc/category/category_bloc.dart';
import 'package:device/application/bussiness_logic/bloc/inventory/inventory_bloc.dart';
import 'package:device/application/presentation/screens/home/widgets/category_widgets/category_list.dart';
import 'package:device/application/presentation/screens/home/widgets/inventory_widgets/inventory_list.dart';
import 'package:device/application/presentation/widgets/custom/custom_appbar/custom_appbar.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/models/category_models/category_qurrey_model/category_qurrey_model.dart';
import 'package:device/domain/models/inventory_models/inventory_qurrrey_model/inventory_qurrey_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width * 0.06;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<CategoryBloc>().add(
            CategoryEvent.getCategoryEvent(
              categoryQurreyModel: CategoryQurreyModel(page: 1, count: 30),
            ),
          );
    });

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<InventoryBloc>().add(
            InventoryEvent.getAllProductsEvent(
              inventoryQurreyModel: InventoryQurreyModel(page: 1, count: 30),
            ),
          );
    });

    return Scaffold(
      backgroundColor: kWhite,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: CustomAppBar(
          title: 'Device Mart',
          trailing: IconButton(
            onPressed: () => Navigator.of(context).pushNamed('/search'),
            icon: const Icon(
              Icons.search,
              color: kBlack,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size,
                ),
                Text("POPULAR CATEGORY", style: kronOne(fontSize: 0.032)),
                kHeightTwenty,
                const CategoryListWidget(),
                Text("POPULAR PRODUCTS", style: kronOne(fontSize: 0.032)),
                kHeightTen,
                kHeightFive,
                const InventoryListWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
