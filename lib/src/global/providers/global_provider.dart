import 'package:flutter/material.dart';
import 'package:jollof_express/src/global/utils/bot_toast.dart';
import 'package:jollof_express/src/global/utils/duration_extension.dart';
import 'package:jollof_express/src/global/utils/order_level.dart';

/// holds all the shared state in this application
class GlobalProvider extends ChangeNotifier {

  /// holds the current level of the order
  OrderLevel currentOrderLevel = OrderLevel.values[0];

  /// the curves for some of the selected animation
  var animationCurve = Curves.fastEaseInToSlowEaseOut;

  /// the duration of the animations
  var animationDuration = 400.ms;

  /// last index of the orderlevel enum
  int get lastLevelIndex => OrderLevel.values.length - 1;

  /// this is the magic that handles all the updating of levels... 
  /// the two pages listen to/on this method
  void updateOrderStatus(int status) {
    if (status > lastLevelIndex) {
      return showToast("that order level status is not supported");
    }
    currentOrderLevel = OrderLevel.values[status];
    notifyListeners();
  }
}
