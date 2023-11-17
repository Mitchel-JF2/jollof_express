import 'package:flutter/material.dart';
import 'package:jollof_express/src/global/providers/global_provider.dart';
import 'package:provider/provider.dart';

import '../../../providers/order_detail_provider.dart';

/// an animated container that increases by multiples 
/// of the local variable [progress]
class TrackingProgressBar extends StatelessWidget {
  const TrackingProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.read<OrderDetailProvider>();
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: provider.liveTrackingBarHorizontalPadding,
        child: LayoutBuilder(
          builder: (_, constraint) {
            var progress =
                constraint.maxWidth / (provider.totalNumberOfLevels - 1);
            return Consumer<GlobalProvider>(
              builder: (context, value, child) => AnimatedContainer(
                duration: value.animationDuration,
                curve: value.animationCurve,
                color: const Color.fromARGB(255, 70, 221, 78),
                height: provider.trackingBarHeight,
                width: progress * value.currentOrderLevel.index,
              ),
            );
          },
        ),
      ),
    );
  }
}
