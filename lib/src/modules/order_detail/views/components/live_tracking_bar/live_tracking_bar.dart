import 'package:flutter/material.dart';
import 'package:jollof_express/src/modules/order_detail/providers/order_detail_provider.dart';
import 'package:provider/provider.dart';

import 'background_for_tracking_progress_bar.dart';
import 'description_for_tracking_progress_levels.dart';
import 'tracking_progress_bar.dart';
import 'tracking_progress_levels.dart';

class LiveTrackingBar extends StatelessWidget {
  const LiveTrackingBar({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.read<OrderDetailProvider>();
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: SizedBox(
          height: provider.liveTrackingBarHeight,
          width: provider.liveTrackingBarWidth,
          child: const Stack(
            children: [
              BackgroundForTrackingProgressBar(),
              TrackingProgressBar(),
              TrackingProgressLevels(),
              DescriptionForTrackingProgressLevels(),
            ],
          ),
        ),
      ),
    );
  }
}
