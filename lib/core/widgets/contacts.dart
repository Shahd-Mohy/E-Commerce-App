import 'package:ecommerce_app/core/widgets/contact_image.dart';
import 'package:ecommerce_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 91,
        width: 185,
        child: const Column(
          children: [
            Center(
              child: Text(
                "- OR Continue with -",
                style: Styles.textStyleHintText,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContactImage(logo: "assets/images/google 1.png"),
                Spacer(
                  flex: 1,
                ),
                ContactImage(logo: "assets/images/Apple.jpg"),
                Spacer(
                  flex: 1,
                ),
                ContactImage(logo: 'assets/images/FaceBook.png')
              ],
            )
          ],
        ),
      ),
    );
  }
}
