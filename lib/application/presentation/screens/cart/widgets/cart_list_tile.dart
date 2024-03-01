import 'package:device/application/bussiness_logic/bloc/cart/cart_bloc.dart';
import 'package:device/application/presentation/screens/cart/widgets/quntity_adder_widget.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/models/cart_and_coupon/get_cart_model/get_items_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CartListTileWidget extends StatelessWidget {
  const CartListTileWidget({super.key, required this.cart});
  final Items cart;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: sWidth * 0.33,
            width: sWidth,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Slidable(
              direction: Axis.horizontal,
              endActionPane: ActionPane(
                motion: const BehindMotion(),
                children: [
                  SlidableAction(
                    onPressed: (context) {
                      context
                          .read<CartBloc>()
                          .add(CartEvent.removeCartEvent(id: cart.productId!));
                    },
                    backgroundColor: kBlack,
                    foregroundColor: kWhite,
                    icon: Icons.delete,
                    label: 'Remove',
                  ),
                ],
              ),
              child: Container(
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
                margin: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: sWidth * 0.30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: sWidth * 0.40,
                          child: Text(cart.productName!,
                              overflow: TextOverflow.ellipsis,
                              style: kronOne()),
                        ),
                        kHeightFive,
                        SizedBox(
                          width: sWidth * 0.50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '₹ ${cart.price!.round().toString()}',
                                    style: priceStyle,
                                  ),
                                ],
                              ),
                              const Spacer(),
                            ],
                          ),
                          // const BorderContainer(string: inventoryCart.),
                        ),
                        QuantityAdder(
                          cart: cart,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: sWidth * 0.10,
          left: sWidth * 0.10,
          child: Container(
            height: sWidth * 0.28,
            width: sWidth * 0.25,
            decoration: cart.images != null
                ? BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                    cart.images!['urls'].first,
                  )))
                : null,
          ),
        )
      ],
    );
  }
}
