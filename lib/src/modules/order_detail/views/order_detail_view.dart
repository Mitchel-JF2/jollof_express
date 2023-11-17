import 'package:flutter/material.dart';
import 'package:jollof_express/src/global/providers/ably_provider.dart';
import 'package:jollof_express/src/global/providers/global_provider.dart';
import 'package:jollof_express/src/global/widgets/jollof_express_app_bar.dart';
import 'package:jollof_express/src/global/widgets/marble_background.dart';
import 'package:provider/provider.dart';

import 'components/live_tracking_bar/live_tracking_bar.dart';
import 'components/order_details/order_details.dart';
import 'components/ordered_item_image.dart';
import 'components/track_your_order_button.dart';

class OrderDetailView extends StatelessWidget {
  const OrderDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    var globalProvider = context.read<GlobalProvider>();
    var ablyProvider = context.read<AblyProvider>();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const JollofExpressAppBar("Order Detail"),
      // TODO: this is for test purposes only
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 10),
          FloatingActionButton(
            heroTag: "sign out",
            onPressed: globalProvider.signOut,
            child: const Icon(Icons.logout),
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            onPressed: ablyProvider.publishToJollofExpress,
            child: const Text("Pub"),
          ),
          const SizedBox(width: 10),
        ],
      ),
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
