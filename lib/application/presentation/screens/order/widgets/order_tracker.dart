import 'package:flutter/material.dart';
import 'package:order_tracker_zen/order_tracker_zen.dart';

class OrderTraker extends StatelessWidget {
  OrderTraker({
    super.key,
    required this.status,
  });

  final String status;
  final trackerData = [
    TrackerData(
      title: "PENDING",
      date: "order placed",
      tracker_details: [
        TrackerDetails(
          title: "Your order is Pending",
          datetime: " waiting for confirmation",
        ),
        TrackerDetails(
          title: "Your order was placed, waiting for shipping",
          datetime: " waiting for shipping",
        ),
      ],
    ),
    TrackerData(
      title: "SHIPPED",
      date: "order shipped",
      tracker_details: [
        TrackerDetails(
          title: "Your order was shipped",
          datetime: "will be there soon",
        ),
      ],
    ),
    TrackerData(
      title: "DELIVERED",
      date: "order delivered",
      tracker_details: [
        TrackerDetails(
          title: "You received your order",
          datetime: "Order received successfully",
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return OrderTrackerZen(
      tracker_data: status == 'Pending'
          ? trackerData.sublist(0, 1)
          : status == 'Shipped'
              ? trackerData.sublist(0, 2)
              : trackerData,
    );
  }
}