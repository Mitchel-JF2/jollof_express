import 'package:flutter/material.dart';
import 'package:jollof_express/src/config/themes/app_style.dart';

class KeyValuePair extends StatelessWidget {
  const KeyValuePair(this.id, this.value, {super.key});

  final String id, value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$id:",
            style: AppStyles.body.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(value, style: AppStyles.body),
        ],
      ),
    );
  }
}
