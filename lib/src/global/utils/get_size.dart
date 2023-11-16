import 'package:flutter/material.dart';

Size getSize(BuildContext context) {
  final size = MediaQuery.of(context).size;
  final padding = MediaQuery.of(context).padding;
  final width = size.width - padding.left - padding.right;
  final height = size.height - padding.top - padding.bottom;
  return Size(width, height);
}
