import 'package:device/application/bussiness_logic/bloc/inventory/inventory_bloc.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:flutter/material.dart';

class ImageShowContainer extends StatelessWidget {
  const ImageShowContainer({
    super.key,
    required this.state,
    required this.width,
  });

  final InventoryState state;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(20, 30, 30, 5),
        height: sWidth * width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
          state.inventoryDetailsRespModel!.data!.images!['urls'].first,
        ))));
  }
}
