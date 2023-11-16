import 'package:flutter/material.dart';
import 'package:jollof_express/src/config/routes/route_names.dart';
import 'package:jollof_express/src/global/utils/get_size.dart';
import 'package:jollof_express/src/global/utils/order_level.dart';

class OrderDetailProvider {
  const OrderDetailProvider(this.context);

  final BuildContext context;

  // radius for the tracking levels
  final trackingLevelRadius = 10.0;

  /// this is the padding for the tracking bars and the levels
  final liveTrackingBarHorizontalPadding =
      const EdgeInsets.symmetric(horizontal: 8.0);

  /// this is the height of the tracking bar itself
  /// which is just a colored container
  final trackingBarHeight = 5.0;

  /// this is the height of the sized box that wraps the tarcking bar
  final liveTrackingBarHeight = 50.0;

  /// this is the width of the sized box that wraps the tarcking bar
  double get liveTrackingBarWidth {
    var size = getSize(context);
    return size.width * .9; // 90% of the screen
  }

  // the total number of levels from order placed to delivered
  int get totalNumberOfLevels => OrderLevel.values.length;

  /// opens the live tracking page
  void onTrackYourOrderPressed() {
    Navigator.pushNamed(context, RouteNames.orderTrackingPage);
  }
}
