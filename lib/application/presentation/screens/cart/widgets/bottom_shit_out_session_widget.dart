import 'package:device/application/bussiness_logic/bloc/cart/cart_bloc.dart';
import 'package:device/application/presentation/routes/routes.dart';
import 'package:device/application/presentation/screens/order/checkout/checkout_screen.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:collection/collection.dart';

class BottomCheckOutSession extends StatelessWidget {
  const BottomCheckOutSession({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return state.getCartRespModel == null ||
                state.getCartRespModel!.data == null ||
                state.getCartRespModel!.data!.items == null ||
                state.getCartRespModel!.data!.items!.isEmpty
            ? kHeightFive
            : Wrap(
                children: [
                  SizedBox(
                      width: sWidth,
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
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Order Details',
                                style: headStyle,
                              ),
                              kHeightFive,
                              Row(
                                children: [
                                  const Text('Bag Total'),
                                  const Spacer(),
                                  Text(
                                    '₹ ${state.bugTotal!.round().toString()}',
                                    style: headStyle,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  const Text('Coupon used'),
                                  const Spacer(),
                                  InkWell(
                                      onTap: () {
                                        
                                        Navigator.pushNamed(
                                            context, Routes.couponScreen);
                                      },
                                      child: Text(
                                        context.read<CartBloc>().usedCouponId !=
                                                0
                                            ? state
                                                    .coupon!
                                                    .firstWhereOrNull(
                                                        (element) =>
                                                            element.id! ==
                                                            context
                                                                .read<
                                                                    CartBloc>()
                                                                .usedCouponId)
                                                    ?.code ??
                                                'Apply coupon'
                                            : 'Apply coupon',
                                        style: const TextStyle(color: kBlue),
                                      ))
                                ],
                              ),
                              const Row(
                                children: [
                                  Text('Delivery fee'),
                                  Spacer(),
                                  Text(
                                    '₹ 0.0',
                                    style: headStyle,
                                  )
                                ],
                              ),
                              kHeightFive,
                              Row(
                                children: [
                                  const Text(
                                    'Discount Amount',
                                    style: headStyle,
                                  ),
                                  const Spacer(),
                                  Text(
                                    '₹ ${state.discount ?? 0}',
                                    style: headStyle,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )),
                  const Divider(
                    color: kBlack,
                  ),
                  ListTile(
                    title: Wrap(direction: Axis.vertical, children: [
                      Text(
                        'Total Price',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: sWidth * 0.040,
                            color: kBlack.withOpacity(0.6)),
                      ),
                      sWidth5,
                      Text('₹ ${state.bugTotal!.toString()}', style: priceStyle)
                    ]),
                    trailing: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ScreenCheckout(
                                  totalAmount: state.bugTotal!,
                                )));
                      },
                      style: elevatedButtonStyleBlack,
                      child: Text(
                        'Proceed To Checkout',
                        style: priceStyle,
                      ),
                    ),
                  ),
                  kHeightTwenty
                ],
              );
      },
    );
  }
}
