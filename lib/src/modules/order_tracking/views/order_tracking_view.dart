import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:jollof_express/src/config/themes/app_colors.dart';
import 'package:jollof_express/src/config/themes/app_style.dart';
import 'package:jollof_express/src/config/themes/app_theme.dart';
import 'package:jollof_express/src/global/widgets/jollof_express_app_bar.dart';
import 'package:jollof_express/src/global/widgets/marble_background.dart';

import 'components/live_tracking_item.dart';
import 'components/rate_this_order.dart';

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
          children: [
            for (int i = 0; i < 6; i++) const LiveTrackingItem(),
            const RateThisOrder(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  label: const Text("How can we improve?"),
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide(
                      color: AppTheme.of(context).colorScheme.inversePrimary,
                      width: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
