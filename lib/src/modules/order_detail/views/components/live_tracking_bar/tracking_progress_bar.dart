import 'package:flutter/material.dart';
import 'package:jollof_express/src/config/themes/app_colors.dart';
import 'package:provider/provider.dart';

import '../../../providers/order_detail_provider.dart';

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
            return Container(
              color: AppColors.amber,
              height: provider.trackingBarHeight,
              width: progress * 3,
            );
          },
        ),
      ),
    );
  }
}
