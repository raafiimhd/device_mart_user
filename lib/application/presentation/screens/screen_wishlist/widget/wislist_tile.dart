import 'package:device/application/bussiness_logic/bloc/cart/cart_bloc.dart';
import 'package:device/application/bussiness_logic/bloc/wishlist/wishlist_bloc.dart';
import 'package:device/application/presentation/screens/cart/screen_cart.dart';
import 'package:device/application/presentation/widgets/list_tile/inventory_list_tile.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/models/inventory_models/inventory_model/inventory_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WislistTile extends StatelessWidget {
  const WislistTile({super.key, required this.inventory, required this.state});
  final InventoryModel inventory;
  final WishlistState state;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InventoryListTile(
          inventory: inventory,
        ),
        BlocBuilder<CartBloc, CartState>(
          buildWhen: (p, c) =>
              p.cartItems.containsKey(inventory.id) !=
              c.cartItems.containsKey(inventory.id),
          builder: (context, state) {
            return ElevatedButton(
                style: elevatedButtonStyle,
                onPressed: () {
                  if (state.cartItems.containsKey(inventory.id)) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ScreenCart()));
                  } else {
                    context
                        .read<CartBloc>()
                        .add(CartEvent.addCartEvent(id: inventory.id!));
                  }
                },
                child: Text(state.cartItems.containsKey(inventory.id)
                    ? 'Go To Cart'
                    : 'Add To Bag'));
          },
        )
      ],
    );
  }
}
