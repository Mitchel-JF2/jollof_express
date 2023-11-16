import 'package:flutter/material.dart';
import 'package:jollof_express/src/config/themes/app_style.dart';
import 'package:provider/provider.dart';

import '../../../providers/order_detail_provider.dart';

class TrackingProgressLevels extends StatelessWidget {
  const TrackingProgressLevels({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.read<OrderDetailProvider>();
    return Center(
      child: Padding(
        padding: provider.liveTrackingBarHorizontalPadding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 0; i < provider.totalNumberOfLevels; i++)
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: provider.trackingLevelRadius,
                    child: Text(
                      '${i + 1}',
                      style: AppStyles.small,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
