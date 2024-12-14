import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        height: 90,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          'assets/images/offers.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
