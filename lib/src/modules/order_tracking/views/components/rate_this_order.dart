import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:jollof_express/src/config/themes/app_colors.dart';

class RateThisOrder extends StatelessWidget {
  const RateThisOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Rate this order"),
        RatingBar.builder(
          direction: Axis.horizontal,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) =>
              const Icon(Icons.star, color: AppColors.amber),
          onRatingUpdate: (rating) {},
        ),
      ],
    );
  }
}
