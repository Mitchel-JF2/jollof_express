import 'package:flutter/material.dart';
import 'package:jollof_express/src/config/themes/app_colors.dart';
import 'package:jollof_express/src/config/themes/app_style.dart';
import 'package:jollof_express/src/global/providers/global_provider.dart';
import 'package:jollof_express/src/global/utils/pulse_animation_type.dart';
import 'package:jollof_express/src/global/widgets/pulse_animation.dart';
import 'package:provider/provider.dart';

import '../../../providers/order_detail_provider.dart';

/// an array of circle avatars to depict each level
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
                  Consumer<GlobalProvider>(
                    builder: (context, value, child) {
                      bool canPaint = value.currentOrderLevel.index >= i;
                      return PulseAnimation(
                        type: PulseAnimationType.scale,
                        play: i == value.lastLevelIndex
                            ? false
                            : value.currentOrderLevel.index == i,
                        child: Material(
                          elevation: canPaint ? 4 : 0,
                          shape: const CircleBorder(),
                          child: CircleAvatar(
                            radius: provider.trackingLevelRadius,
                            backgroundColor: canPaint
                                ? Colors.white
                                : AppColors.grey.withOpacity(.6),
                            child: Text(
                              '${i + 1}',
                              style:
                                  AppStyles.small.copyWith(color: Colors.black),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
