import 'package:flutter/material.dart';
import 'package:jollof_express/src/global/widgets/jollof_express_app_bar.dart';
import 'package:jollof_express/src/global/widgets/marble_background.dart';

/// a simple extract for the basic way all the pages of the app should look
class JollofScaffold extends StatelessWidget {
  const JollofScaffold({
    super.key,
    required this.appBarTitle,
    required this.body,
  });

  final String appBarTitle;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JollofExpressAppBar(appBarTitle),
      extendBodyBehindAppBar: true,
      body: MarbleBackground(child: body),
    );
  }
}
