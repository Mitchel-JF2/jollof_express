import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jollof_express/src/config/themes/app_colors.dart';

class JollofExpressAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const JollofExpressAppBar(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const BackButton(),
      centerTitle: true,
      backgroundColor: AppColors.transparent,
      title: Text(title),
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
