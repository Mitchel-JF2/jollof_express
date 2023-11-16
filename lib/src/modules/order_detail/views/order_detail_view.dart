import 'package:flutter/material.dart';
import 'package:jollof_express/src/global/widgets/jollof_express_app_bar.dart';
import 'package:jollof_express/src/global/widgets/marble_background.dart';

import 'components/live_tracking_bar/live_tracking_bar.dart';
import 'components/order_details/order_details.dart';
import 'components/ordered_item_image.dart';
import 'components/track_your_order_button.dart';

class OrderDetailView extends StatelessWidget {
  const OrderDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const JollofExpressAppBar("Order Detail"),
      body: MarbleBackground(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: const [
              LiveTrackingBar(),
              TrackYourOrderButton(),
              OrderedItemImage(),
              OrderDetails(),
            ],
          ),
        ),
      ),
    );
  }
}
