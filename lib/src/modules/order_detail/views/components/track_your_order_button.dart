import 'package:flutter/material.dart';
import 'package:jollof_express/src/config/themes/app_style.dart';
import 'package:jollof_express/src/modules/order_detail/providers/order_detail_provider.dart';
import 'package:provider/provider.dart';

class TrackYourOrderButton extends StatelessWidget {
  const TrackYourOrderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = context.read<OrderDetailProvider>();
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          elevation: 2,
        ),
        onPressed: provider.onTrackYourOrderPressed,
        child: Text(
          "Track Your Order",
          style: AppStyles.body
              .copyWith(color: const Color.fromARGB(255, 51, 183, 58)),
        ),
      ),
    );
  }
}
