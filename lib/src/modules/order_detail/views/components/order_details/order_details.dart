import 'package:flutter/material.dart';

import 'key_value_pair.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 16.0),
      child: Column(
        children: [
          KeyValuePair("Order ID", "123456"),
          KeyValuePair("Item", "Spaghetti with Prawn"),
          KeyValuePair("Quantity", "x2"),
          KeyValuePair("Unit price", "₦3,000"),
          KeyValuePair("Total", "₦6,000"),
        ],
      ),
    );
  }
}
