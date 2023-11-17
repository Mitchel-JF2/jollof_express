import 'package:flutter/material.dart';
import 'package:jollof_express/src/global/widgets/jollof_express_app_bar.dart';
import 'package:jollof_express/src/global/widgets/marble_background.dart';

/// a simple extract for the basic way all the pages of the app should look
class JollofScaffold extends StatelessWidget {
  const JollofScaffold({
    super.key,
    required this.appBarTitle,
    required this.body,
    this.fab,
  });

  final String appBarTitle;
  final Widget body;
  final Widget? fab;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JollofExpressAppBar(appBarTitle),
      extendBodyBehindAppBar: true,
      floatingActionButton: fab,
      body: MarbleBackground(child: body),
    );
  }
}
