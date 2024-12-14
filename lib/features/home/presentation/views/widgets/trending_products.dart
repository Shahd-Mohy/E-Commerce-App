import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class TrendyProductsProm extends StatelessWidget {
  const TrendyProductsProm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xffFE879D),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Trendy Products',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 18,
                      child: const Row(
                        children: [
                          Icon(
                            Icons.calendar_month_rounded,
                            size: 16,
                            color: kPrimaryColor,
                          ),
                          Text(
                            ' Last Date 29/02/22 ',
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
                  backgroundColor: const Color(0xffFE879D),
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
