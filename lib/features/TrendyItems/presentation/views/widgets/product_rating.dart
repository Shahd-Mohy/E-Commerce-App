import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class ProductRating extends StatelessWidget {
  ProductRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          Icons.star_outlined,
          color: Colors.yellow,
          size: 18,
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '50.000',
          style: Styles.textStyleHintText,
        )
      ],
    );
  }
}
