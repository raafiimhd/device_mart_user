import 'package:device/application/bussiness_logic/bloc/cart/cart_bloc.dart';
import 'package:device/application/presentation/screens/cart/widgets/border_container_widget.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/models/cart_and_coupon/get_cart_model/get_items_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuantityAdder extends StatelessWidget {
  const QuantityAdder({
    super.key,
    required this.cart,
  });
  final Items cart;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: BlocBuilder<CartBloc, CartState>(
        buildWhen: (previous, current) =>
            previous.cartItems[cart.productId!] !=
            current.cartItems[cart.productId!],
        builder: (context, state) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  context
                      .read<CartBloc>()
                      .add(CartEvent.cartDecrementEvent(id: cart.productId!));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  height: sWidth * 0.07,
                  decoration: boxborder,
                  child: Center(
                      child: Text(
                    '-',
                    style: buttonStyleQuantity,
                  )),
                ),
              ),
              sWidth5,
              BorderContainer(
                  string: state.cartItems[cart.productId!]!.toString()),
              sWidth5,
              InkWell(
                onTap: () {
                  context
                      .read<CartBloc>()
                      .add(CartEvent.cartIncrementEvent(id: cart.productId!));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  height: sWidth * 0.07,
                  decoration: boxborder,
                  child: Center(
                      child: Text(
                    '+',
                    style: buttonStyleQuantity,
                  )),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
