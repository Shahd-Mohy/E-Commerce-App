import 'package:flutter/material.dart';

class ContactImage extends StatelessWidget {
  const ContactImage({super.key, required this.logo});

  final String logo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 56,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color(0xffFCF3F6),
        border: Border.all(color: const Color(0xffF83758), width: 1.0),
      ),
      child: Center(
        child: Image(
          image: AssetImage(logo),
          width: 25,
          height: 25,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
