import 'package:flutter/material.dart';
import 'package:jollof_express/src/config/themes/app_colors.dart';
import 'package:jollof_express/src/config/themes/app_style.dart';
import 'package:jollof_express/src/global/providers/global_provider.dart';
import 'package:jollof_express/src/global/utils/duration_extension.dart';
import 'package:jollof_express/src/global/utils/order_level.dart';
import 'package:jollof_express/src/global/utils/pulse_animation_type.dart';
import 'package:jollof_express/src/global/widgets/pulse_animation.dart';
import 'package:jollof_express/src/modules/order_tracking/providers/order_tracking_provider.dart';
import 'package:provider/provider.dart';

/// a fixed array of the levels involved in this Jollof ordering
class LiveTrackingItems extends StatelessWidget {
  const LiveTrackingItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var orderTrackingProvider = context.read<OrderTrackingProvider>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int i = 0; i < OrderLevel.values.length; i++)
          Consumer<GlobalProvider>(
            builder: (context, value, child) {
              var isCompleted = i > value.currentOrderLevel.index;
              var transparent = AppColors.transparent;
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PulseAnimation(
                      play: i == value.lastLevelIndex
                          ? false
                          : value.currentOrderLevel.index == i,
                      type: PulseAnimationType.fade,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            OrderLevel.values[i].name,
                            style: AppStyles.header.copyWith(
                              color: isCompleted ? transparent : null,
                            ),
                          ),
                          Text(
                            OrderLevel.values[i].description,
                            style: AppStyles.body.copyWith(
                              color: isCompleted ? transparent : null,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // show a checkbox that depicts that an order is complete
                    AnimatedCrossFade(
                      duration: 500.ms,
                      crossFadeState: orderTrackingProvider.showCheckMark(
                        i,
                        value.currentOrderLevel.index,
                        value.lastLevelIndex,
                      ),
                      firstChild: const SizedBox.square(dimension: 50),
                      secondChild: Checkbox(
                        value: true,
                        fillColor: MaterialStateProperty.resolveWith(
                          (states) => const Color.fromARGB(255, 52, 170, 58),
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
      ],
    );
  }
}
