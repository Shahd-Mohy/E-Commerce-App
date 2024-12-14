import 'package:flutter/material.dart';

class CustomProsuctImage extends StatelessWidget {
  const CustomProsuctImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.5,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: AspectRatio(
            aspectRatio: 2 / 4,
            child: Image.asset(imageUrl, fit: BoxFit.fill),
          ),
        ));
  }
}
