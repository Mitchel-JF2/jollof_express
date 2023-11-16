import 'package:flutter/material.dart';
import 'package:jollof_express/src/config/routes/route_names.dart';
import 'package:jollof_express/src/modules/order_detail/providers/order_detail_provider.dart';
import 'package:jollof_express/src/modules/order_detail/views/order_detail_view.dart';
import 'package:jollof_express/src/modules/order_tracking/providers/order_tracking_provider.dart';
import 'package:jollof_express/src/modules/order_tracking/views/order_tracking_view.dart';
import 'package:provider/provider.dart';

final routes = <String, WidgetBuilder>{
  RouteNames.orderDetailPage: (_) => Provider(
        create: (context) => OrderDetailProvider(context),
        child: const OrderDetailView(),
      ),
  RouteNames.orderTrackingPage: (_) => Provider(
        create: (context) => OrderTrackingProvider(context),
        child: const OrderTrackingView(),
      )
};
