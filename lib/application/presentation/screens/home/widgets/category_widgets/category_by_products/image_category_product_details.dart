import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/models/inventory_models/inventory_model/inventory_model.dart';
import 'package:flutter/material.dart';

class ImageShowContainerCategoryProduct extends StatelessWidget {
  const ImageShowContainerCategoryProduct({
    super.key,
    required this.inventory,
    required this.width,
  });
  final InventoryModel inventory;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(20, 30, 30, 5),
        height: sWidth * width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
          inventory.images!['urls'].first,
        ))));
  }
}
