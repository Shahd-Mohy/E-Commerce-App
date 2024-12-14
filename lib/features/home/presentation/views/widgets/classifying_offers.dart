import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class ClassifyingOffers extends StatelessWidget {
  const ClassifyingOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 172,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: kPrimaryColor),
        child: Row(
          children: [
            SizedBox(
              width: 40,
            ),
            SizedBox(
              width: 108,
              height: 108,
              child: Image.asset(
                'assets/images/heels.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Flat and Heels',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Stand a chance to get rewarded',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kTextButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Container(
                        height: 28,
                        width: 89,
                        child: const Row(
                          children: [
                            Text(
                              'Visit now',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Icon(
                              Icons.arrow_forward_rounded,
                              color: kPrimaryColor,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
