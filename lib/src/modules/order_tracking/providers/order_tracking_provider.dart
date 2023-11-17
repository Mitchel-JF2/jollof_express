import 'package:flutter/material.dart';
import 'package:jollof_express/src/global/utils/order_level.dart';

/// this is a scoped provider,
/// it only contains state relating to OrderTrackingViews
class OrderTrackingProvider {
  OrderTrackingProvider(this.context);

  final BuildContext context;

  /// describes each level of [OrderLevel]
  String orderLevelDescription(OrderLevel level) {
    switch (level) {
      case OrderLevel.placed:
        return "A vendor will soon accept your order";
      case OrderLevel.accepted:
        return "The vendor is preparing your order";
      case OrderLevel.pickUpInProgress:
        return "A rider is on his way to pick up your order";
      case OrderLevel.onTheWayToCustomer:
        return "The rider is bringing your order to you";
      case OrderLevel.arrived:
        return "Your jollof is here, come and pick it up";
      case OrderLevel.delivered:
        return "Oya enjoy! You sef you don try!";

      default:
        throw Exception(
          "This order level is not recognized, "
          "something must have gone terribly wrong",
        );
    }
  }

  ///whether to show a checkbox that depicts this order as completed
  CrossFadeState showCheckMark(int i, currentOrderIndex, lastIndex) {
    if (i == currentOrderIndex && i == lastIndex) {
      return CrossFadeState.showSecond;
    }
    if (i < currentOrderIndex) return CrossFadeState.showSecond;
    return CrossFadeState.showFirst;
  }
}
