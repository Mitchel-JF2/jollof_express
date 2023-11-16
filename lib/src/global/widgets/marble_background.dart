import 'package:flutter/material.dart';
import 'package:jollof_express/src/config/assets/asset_path.dart';

class MarbleBackground extends StatelessWidget {
  const MarbleBackground({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetPath.marbleBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
