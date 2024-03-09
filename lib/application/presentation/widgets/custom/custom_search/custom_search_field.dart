import 'package:device/application/bussiness_logic/bloc/inventory/inventory_bloc.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/models/search_models/search_qurrey_model/search_qurrey_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: sWidth * 0.10,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 237, 236, 236), borderRadius: BorderRadius.all(Radius.circular(5))),
        child: TextFormField(
          onChanged: (value) {
            context.read<InventoryBloc>().add(InventoryEvent.searchEvent(
                searchQurreyModel:
                    SearchQurreyModel(search: value, page: 1, count: 30)));
          },
          decoration: const InputDecoration(
              hintText: 'Search',
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search)),
        ),
      ),
    );
  }
}
