import 'package:flutter/material.dart';
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
        onPressed: provider.onTrackYourOrderPressed,
        child: const Text("Track Your Order"),
      ),
    );
  }
}
