import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class CustomTheirdBar extends StatelessWidget {
  const CustomTheirdBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 24,
        child: Row(
          children: [
            const Text(
              'All Featured',
              style: Styles.textStyle18,
            ),
            const Spacer(
              flex: 4,
            ),
            Container(
              decoration: BoxDecoration(
                  color: kPrimaryColor, borderRadius: BorderRadius.circular(6)),
              height: 24,
              width: 61,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sort'),
                  Icon(
                    Icons.swap_vert,
                  )
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Container(
              decoration: BoxDecoration(
                  color: kPrimaryColor, borderRadius: BorderRadius.circular(6)),
              height: 24,
              width: 70,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Filter'),
                  Icon(
                    Icons.filter_alt_outlined,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
