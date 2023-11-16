import 'package:flutter/material.dart';
import 'package:jollof_express/src/config/themes/app_style.dart';

class LiveTrackingItem extends StatelessWidget {
  const LiveTrackingItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Order Placed",
                style: AppStyles.header,
              ),
              Text(
                "9:41 AM",
                style: AppStyles.small,
              ),
              Text("A vendor will soon accept your order"),
            ],
          ),
          Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
