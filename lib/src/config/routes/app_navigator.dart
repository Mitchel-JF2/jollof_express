import 'package:flutter/material.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
NavigatorState? get appNavigator => navigatorKey.currentState;
