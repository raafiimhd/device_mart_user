import 'package:device/application/bussiness_logic/bloc/cart/cart_bloc.dart';
import 'package:device/application/presentation/screens/cart/screen_cart.dart';
import 'package:device/application/presentation/utils/fav_button/fav_button.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/models/inventory_models/inventory_model/inventory_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomButtonsDetails extends StatelessWidget {
  const BottomButtonsDetails({
    super.key,
    required this.inventory,
  });

  final InventoryModel inventory;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: const BoxDecoration(
            color: kGery, borderRadius: BorderRadius.all(kRadius5)),
        child: FavButton(
            isFav: inventory.isWishlisted ?? false, id: inventory.id!),
      ),
      title: BlocBuilder<CartBloc, CartState>(
        buildWhen: (p, c) =>
            p.cartItems[inventory.id!] != c.cartItems[inventory.id!],
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
      ),
    );
  }
}
