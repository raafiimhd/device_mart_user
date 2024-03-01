import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/models/inventory_models/inventory_model/inventory_model.dart';
import 'package:flutter/material.dart';

class ImageShowContainerWishlist extends StatelessWidget {
  const ImageShowContainerWishlist({
    Key? key,
    required this.inventory,
    required this.height,
  }) : super(key: key);

  final InventoryModel inventory;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 30, 5),
      height: sWidth * height,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 222, 221, 221),
            offset: Offset(
              5.0,
              5.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ),
          BoxShadow(
            color: kWhite,
            offset: Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          inventory.images!['urls'].first,
          width: double.infinity,
        ),
      ),
    );
  }
}
