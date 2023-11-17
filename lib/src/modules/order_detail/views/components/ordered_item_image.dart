import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jollof_express/src/config/assets/asset_path.dart';

// An image of some sweet sweet Jollof rice or spaghetti
class OrderedItemImage extends StatefulWidget {
  const OrderedItemImage({super.key});

  @override
  State<OrderedItemImage> createState() => _OrderedItemImageState();
}

class _OrderedItemImageState extends State<OrderedItemImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> scale;
  final images = [AssetPath.originalJollof, AssetPath.shortSpagJollof];
  final index = Random().nextInt(2);

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 7),
    );
    scale = Tween<double>(begin: 1, end: 1.07).animate(controller);
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: ScaleTransition(
        scale: scale,
        child: CircleAvatar(
          radius:
              130, // TODO: Make this responsive with your new responsiveness formula
          backgroundImage: AssetImage(images[index]),
        ),
      ),
    );
  }
}
