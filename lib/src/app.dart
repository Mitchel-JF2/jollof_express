import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:jollof_express/src/config/routes/app_navigator.dart';
import 'package:jollof_express/src/config/routes/routes.dart';
import 'package:jollof_express/src/config/themes/app_theme.dart';
import 'package:jollof_express/src/global/providers/ably_provider.dart';
import 'package:provider/provider.dart';

import 'modules/authentication/views/authentication_view.dart';

/// This is the base widget of Jollof Express
class JollofExpressApp extends StatelessWidget {
  const JollofExpressApp({super.key});

  @override
  Widget build(BuildContext context) {
    // this kickstarts the connection to ably
    context.read<AblyProvider>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jollof Express',
      theme: AppTheme.light,
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
      navigatorKey: navigatorKey,
      routes: routes,
      home: const AuthenticationView(),
    );
  }
}
