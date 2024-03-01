import 'package:flutter/material.dart';
import 'package:order_tracker_zen/order_tracker_zen.dart';

class OrderTraker extends StatelessWidget {
  const OrderTraker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OrderTrackerZen(
      tracker_data: [
        TrackerData(
          title: "Pending",
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
          title: "Shipped",
          date: "order shipped",
          tracker_details: [
            TrackerDetails(
              title: "Your order was shipped",
              datetime: "will be there soon",
            ),
          ],
        ),
        TrackerData(
          title: "Delivered",
          date: "order delivered",
          tracker_details: [
            TrackerDetails(
              title: "You received your order",
              datetime: "Order received successfully",
            ),
          ],
        ),
      ],
    );
  }
}
