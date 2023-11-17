import 'package:flutter/material.dart';
import 'package:jollof_express/src/global/utils/bot_toast.dart';
import 'package:jollof_express/src/global/utils/duration_extension.dart';
import 'package:jollof_express/src/global/utils/order_level.dart';

class GlobalProvider extends ChangeNotifier {
  int i = 0;
  OrderLevel currentOrderLevel = OrderLevel.values[0];

  var animationCurve = Curves.fastEaseInToSlowEaseOut;
  var animationDuration = 400.ms;

  int get lastLevelIndex => OrderLevel.values.length - 1;

  void updateOrderStatus(int status) {
    if (status > lastLevelIndex) {
      return showToast("that order level status is not supported");
    }
    currentOrderLevel = OrderLevel.values[status];
    notifyListeners();
  }
}
