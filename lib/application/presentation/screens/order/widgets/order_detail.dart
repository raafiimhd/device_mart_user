import 'package:device/domain/models/order/get_order_model/get_order_qurrey_model.dart';
import 'package:flutter/material.dart';
import 'package:device/application/bussiness_logic/bloc/order/order_bloc.dart';
import 'package:device/application/presentation/screens/order/widgets/order_details_tile.dart';
import 'package:device/application/presentation/screens/order/widgets/order_tracker.dart';
import 'package:device/application/presentation/utils/show_snack_bar/show_snack_bar.dart';
import 'package:device/application/presentation/widgets/custom/custom_appbar/custom_appbar.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/models/order/get_order_model/datum.dart';
import 'package:device/domain/models/order/order_qurrey_model/order_qurrey.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderDetailViews extends StatelessWidget {
  const OrderDetailViews({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<OrderBloc>().add(OrderEvent.getOrderEvent(
          getOrderQurreyModel: GetOrderQurreyModel(page: 1, count: 30)));
    });
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CustomAppBar(title: 'Order'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: BlocConsumer<OrderBloc, OrderState>(
              listener: (context, state) {
                if (state.hasError) {
                  showSnack(
                    context: context,
                    message: state.message!,
                    color: kRed,
                  );
                }
              },
              builder: (context, state) {
                final data = state.getOrderModel!.data![index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const OrderTraker(),
                    const Divider(),
                    OrderDetailItemTile(data: data),
                    const Divider(),
                    Text(
                      'TOTAL AMOUNT : ${data.productPrice}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    kHeightTen,
                    Text(
                      data.orderStatus!,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: data.orderStatus == 'Returned'
                            ? kRed
                            : data.orderStatus == 'Cancelled'
                                ? kRed
                                : kGreen,
                      ),
                    ),
                    Text(
                      data.deliveryAddress!,
                      style: TextStyle(fontSize: 18),
                    ),
                    kHeightTen,
                    TextButton(
                      onPressed: () {
                        data.orderStatus == 'Pending'
                            ? context.read<OrderBloc>().add(
                                  OrderEvent.cancelOrderEvent(
                                    orderQrrey: OrderQrrey(id: data.orderId),
                                  ),
                                )
                            : data.orderStatus == "Delivered"
                                ? context.read<OrderBloc>().add(
                                      OrderEvent.returnOrderEvent(
                                        orderQrrey:
                                            OrderQrrey(id: data.orderId),
                                      ),
                                    )
                                : '';
                      },
                      child: Text(
                        data.orderStatus == 'Pending'
                            ? 'Cancel Order'
                            : data.orderStatus == "Delivered"
                                ? 'Return Order'
                                : '',
                        style: const TextStyle(color: kRed),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
