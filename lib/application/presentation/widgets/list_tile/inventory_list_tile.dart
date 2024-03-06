import 'package:device/application/presentation/screens/home/widgets/inventory_widgets/inventory_details.dart';
import 'package:device/application/presentation/screens/screen_wishlist/widget/image_show_container_fav.dart';
import 'package:device/application/presentation/utils/fav_button/fav_button.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/models/inventory_models/inventory_model/inventory_model.dart';
import 'package:flutter/material.dart';

class InventoryListTile extends StatelessWidget {
  const InventoryListTile({super.key, required this.inventory});
  final InventoryModel inventory;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => InventoryDetails(
                      id: inventory.id!,
                      isWishlisted: inventory.isWishlisted??true)));
            },
            child: Stack(children: [
              ImageShowContainerWishlist(inventory: inventory, height: 0.50),
              Positioned(
                top: 1,
                right: 1,
                child: FavButton(
                  id: inventory.id!,
                  isFav: inventory.isWishlisted ?? true,
                ),
              ),
            ]),
          ),
          Text(
            inventory.productName!,
            style: kronOne(),
          ),
        ],
      ),
    );
  }
}
