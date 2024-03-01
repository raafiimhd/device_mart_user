import 'package:device/application/bussiness_logic/bloc/inventory/inventory_bloc.dart';
import 'package:device/application/presentation/screens/home/widgets/category_widgets/category_by_products/category_product_details.dart';
import 'package:device/application/presentation/widgets/custom/custom_appbar/custom_appbar.dart';
import 'package:device/domain/models/category_models/category_by_products_model/category_id_product_model/category_id_product_model.dart';
import 'package:device/domain/models/category_models/category_by_products_model/category_product_qurrey_model/category_product_qurrey_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenCategory extends StatelessWidget {
  const ScreenCategory({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<InventoryBloc>().add(InventoryEvent.categoryProduct(
          categoryProductQurreyModel:
              CategoryProductQurreyModel(page: 1, count: 30),
          categoryIdProductModel: CategoryIdProductModel(categoryId: id)));
    });
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: CustomAppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back)),
              title: 'All Products')),
      body: const CatogoryListViews(),
    );
  }
}
