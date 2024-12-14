import 'package:ecommerce_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomPageTitle extends StatelessWidget {
  const CustomPageTitle({super.key, required this.tittle});
  final String tittle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: double.infinity,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              GoRouter.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Text(
              textAlign: TextAlign.center,
              tittle,
              style: Styles.textStyle18,
            ),
          ),
        ],
      ),
    );
  }
}
