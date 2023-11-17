import 'package:flutter/material.dart';
import 'package:jollof_express/src/global/widgets/jollof_scaffold.dart';

import 'components/live_tracking_item.dart';

/// This is where the details of the tracking is displayed
class OrderTrackingView extends StatelessWidget {
  const OrderTrackingView({super.key});

  @override
  Widget build(BuildContext context) {
    return JollofScaffold(
      appBarTitle: "Live Tracking",
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          LiveTrackingItem(),
        ],
      ),
    );
  }
}
