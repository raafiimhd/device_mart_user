import 'package:device/application/presentation/screens/home/widgets/category_widgets/category_by_products/image_category_product_details.dart';
import 'package:device/application/presentation/screens/home/widgets/inventory_widgets/bottom_button_widget.dart';
import 'package:device/application/presentation/screens/home/widgets/inventory_widgets/inventory_details.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/models/inventory_models/inventory_model/inventory_model.dart';
import 'package:flutter/material.dart';

class CategoryDetailContainer extends StatelessWidget {
  const CategoryDetailContainer({super.key, required this.inventory});
  final InventoryModel inventory;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: sWidth * 1.2,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => InventoryDetails(
                          isWishlisted: inventory.isWishlisted ?? false,
                          id: inventory.id!,
                        )));
              },
              child: ImageShowContainerCategoryProduct(
                width: 0.90,
                inventory: inventory,
              )),
          Text(
            inventory.productName!,
            style: headStyle,
          ),
          kHeightFive,
          Row(
            children: [
              Text(
                '₹ ${inventory.price!}',
                style: priceStyle,
              ),
            ],
          ),
          BottomButtonsDetails(
            id: inventory.id!,
            isWishlisted: inventory.isWishlisted ?? false,
          )
        ],
      ),
    );
  }
}
