import 'package:flutter/material.dart';

/// this is a scoped provider,
/// it only contains state relating to OrderTrackingViews
class OrderTrackingProvider {
  OrderTrackingProvider(this.context);

  final BuildContext context;

  ///whether to show a checkbox that depicts this order as completed
  CrossFadeState showCheckMark(int i, currentOrderIndex, lastIndex) {
    if (i == currentOrderIndex && i == lastIndex) {
      return CrossFadeState.showSecond;
    }
    if (i < currentOrderIndex) return CrossFadeState.showSecond;
    return CrossFadeState.showFirst;
  }
}
