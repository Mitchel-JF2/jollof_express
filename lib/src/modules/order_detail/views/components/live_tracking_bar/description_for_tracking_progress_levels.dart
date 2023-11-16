import 'package:flutter/material.dart';
import 'package:jollof_express/src/config/themes/app_style.dart';
import 'package:jollof_express/src/global/utils/order_level.dart';
import 'package:jollof_express/src/modules/order_detail/providers/order_detail_provider.dart';
import 'package:provider/provider.dart';

class DescriptionForTrackingProgressLevels extends StatelessWidget {
  const DescriptionForTrackingProgressLevels({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var provider = context.read<OrderDetailProvider>();
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 32.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 0; i < provider.totalNumberOfLevels; i++)
              Text(
                OrderLevel.values[i].name,
                style: AppStyles.small,
              ),
          ],
        ),
      ),
    );
  }
}
