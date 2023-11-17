import 'package:flutter/material.dart';

/// gets the actual size of the screen
Size getSize(BuildContext context) {
  final size = MediaQuery.of(context).size;
  final padding = MediaQuery.of(context).padding;
  final width = size.width - padding.left - padding.right;
  final height = size.height - padding.top - padding.bottom;
  return Size(width, height);
}
