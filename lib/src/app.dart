import 'package:flutter/material.dart';
import 'package:jollof_express/src/config/routes/route_names.dart';
import 'package:jollof_express/src/config/routes/routes.dart';
import 'package:jollof_express/src/config/themes/app_theme.dart';

class JollofExpressApp extends StatelessWidget {
  const JollofExpressApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jollof Express',
      theme: AppTheme.light,
      initialRoute: RouteNames.orderDetailPage,
      routes: routes,
    );
  }
}
