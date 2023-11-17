import 'package:flutter/material.dart';
import 'package:jollof_express/src/config/themes/app_colors.dart';
import 'package:provider/provider.dart';

import '../../../providers/order_detail_provider.dart';

class BackgroundForTrackingProgressBar extends StatelessWidget {
  const BackgroundForTrackingProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.read<OrderDetailProvider>();
    return Center(
      child: Padding(
        padding: provider.liveTrackingBarHorizontalPadding,
        child: Container(
          alignment: Alignment.centerLeft,
          color: AppColors.grey.withOpacity(.5),
          height: provider.trackingBarHeight,
          width: double.infinity,
        ),
      ),
    );
  }
}
