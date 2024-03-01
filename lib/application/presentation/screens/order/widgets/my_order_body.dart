import 'package:device/application/bussiness_logic/bloc/order/order_bloc.dart';
import 'package:device/application/presentation/screens/order/widgets/my_order_list_tile.dart';
import 'package:device/application/presentation/screens/order/widgets/order_detail.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/models/order/get_order_model/get_order_qurrey_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';

class MyOrderBody extends StatelessWidget {
  const MyOrderBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<OrderBloc>().add(OrderEvent.getOrderEvent(
          getOrderQurreyModel: GetOrderQurreyModel(page: 1, count: 30)));
    });
    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: BlocBuilder<OrderBloc, OrderState>(
            builder: (context, state) {
              if (state.isLoading) {
                return Center(
                    child: LoadingAnimationWidget.inkDrop(
                        color: kWhite, size: 25));
              }
              if (state.getOrderModel == null ||
                  state.getOrderModel!.data == null ||
                  state.getOrderModel!.data!.isEmpty) {
                return Center(
                  child: LottieBuilder.asset(
                      'assets/lottie_files/Animation - 1704814166572.json',
                      fit: BoxFit.cover,
                      height: size.width * 0.9),
                );
              }
              return ListView.builder(
                itemCount: state.getOrderModel!.data!.length,
                itemBuilder: (context, index) => GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => OrderDetailViews(
                              index: index,
                            ))),
                    child: MyOrderListTile(
                      data: state.getOrderModel!.data![index],
                    )),
              );
            },
          )),
    );
  }
}
