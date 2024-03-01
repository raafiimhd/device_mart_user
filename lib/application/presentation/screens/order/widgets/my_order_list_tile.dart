import 'package:device/application/presentation/screens/order/widgets/statck_image_container.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/models/order/get_order_model/datum.dart';
import 'package:flutter/material.dart';

class MyOrderListTile extends StatelessWidget {
  const MyOrderListTile({
    super.key,
    required this.data,
  });
  final Datum data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: sWidth * 0.3,
      width: sWidth,
      decoration: const BoxDecoration(
          boxShadow: [BoxShadow(color: kBlack)],
          color: kWhite,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border()),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          data.images != null && data.images!.isNotEmpty
              ? SizedBox(
                  height: sWidth * 0.22,
                  width: sWidth * 0.20,
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: StackImageContainer(images: data.images),
                      ),
                    ],
                  ),
                )
              : SizedBox(
                  width: sWidth * 0.20,
                ),
          kWidth20,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Text(
                    'Total Price :',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                  Text(
                    data.productPrice.toString(),
                    style: priceStyle,
                  )
                ],
              ),
              kHeightTen,
              Row(
                children: [
                  const Text('Order Status :'),
                  Text(
                    data.orderStatus!,
                    style: headStyle,
                  )
                ],
              ),
              kHeightFive,
              Text(
                data.orderId.toString(),
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const Spacer(),
          const Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 15,
            ),
          )
        ],
      ),
    );
  }
}
