import 'package:device/application/bussiness_logic/bloc/cart/cart_bloc.dart';
import 'package:device/application/presentation/screens/cart/screen_cart.dart';
import 'package:device/application/presentation/utils/fav_button/fav_button.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomButtonsDetails extends StatelessWidget {
  const BottomButtonsDetails(
      {super.key, required this.id, required this.isWishlisted});
  final bool isWishlisted;
  final int id;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: const BoxDecoration(
            color: kGery, borderRadius: BorderRadius.all(kRadius5)),
        child: FavButton(isFav: isWishlisted, id: id),
      ),
      title: BlocBuilder<CartBloc, CartState>(
        buildWhen: (p, c) => p.cartItems[id] != c.cartItems[id],
        builder: (context, state) {
          return ElevatedButton(
              style: elevatedButtonStyle,
              onPressed: () {
                if (state.cartItems.containsKey(id)) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ScreenCart()));
                } else {
                  context.read<CartBloc>().add(CartEvent.addCartEvent(id: id));
                }
              },
              child: Text(state.cartItems.containsKey(id)
                  ? 'Go To Cart'
                  : 'Add To Bag'));
        },
      ),
    );
  }
}
