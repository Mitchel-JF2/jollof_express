import 'package:flutter/material.dart';
import 'package:jollof_express/src/global/widgets/jollof_express_app_bar.dart';
import 'package:jollof_express/src/global/widgets/marble_background.dart';

import 'components/live_tracking_item.dart';

class OrderTrackingView extends StatelessWidget {
  const OrderTrackingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const JollofExpressAppBar("Live Tracking"),
      extendBodyBehindAppBar: true,
      body: MarbleBackground(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const [
            LiveTrackingItem(),
          ],
        ),
      ),
    );
  }
}
