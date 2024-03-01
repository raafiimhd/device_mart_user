import 'package:device/application/bussiness_logic/bloc/inventory/inventory_bloc.dart';
import 'package:device/application/presentation/screens/search/widgets/search_widgets.dart';
import 'package:device/application/presentation/widgets/custom/custom_search/custom_search_field.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/models/inventory_models/inventory_qurrrey_model/inventory_qurrey_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<InventoryBloc>().add(
            InventoryEvent.getAllProductsEvent(
              inventoryQurreyModel: InventoryQurreyModel(page: 1, count: 30),
            ),
          );
    });
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomSearchField(),
              kHeight20,
              const SearchListWidgets(),
              SizedBox(height: sWidth * 0.20)
            ],
          ),
        ),
      ),
    );
  }
}
