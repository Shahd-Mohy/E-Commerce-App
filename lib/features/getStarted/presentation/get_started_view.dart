import 'package:ecommerce_app/core/utlis/app_router.dart';
import 'package:ecommerce_app/core/widgets/custon_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GetStartedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/unsplash_fouVDmGXoPI.png',
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.2),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 35.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'You want\nAuthentic, here you go!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Find it here, buy it now!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffF2F2F2),
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 30),
                CustomButton(
                    title: "Get Started",
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.khomeView);
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
