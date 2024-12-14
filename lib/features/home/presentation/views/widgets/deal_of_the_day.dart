import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class DealOfTheDay extends StatelessWidget {
  const DealOfTheDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xff4392F9),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Deal of the Day',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      height: 18,
                      child: const Row(
                        children: [
                          Icon(
                            Icons.alarm,
                            size: 16,
                            color: kPrimaryColor,
                          ),
                          Text(
                            ' 22h 55m 20s remaining ',
                            style:
                                TextStyle(color: kPrimaryColor, fontSize: 12),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff4392F9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
                child: const Row(
                  children: [
                    Text(
                      'View All ',
                      style: TextStyle(color: kPrimaryColor, fontSize: 12),
                    ),
                    Icon(
                      Icons.arrow_forward_rounded,
                      color: kPrimaryColor,
                      size: 16,
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
