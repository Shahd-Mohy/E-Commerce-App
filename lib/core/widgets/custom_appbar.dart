import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/utlis/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        height: 56,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            IconButton(
                color: kIconColor,
                onPressed: () {},
                icon: const Icon(Icons.sort_rounded, color: Colors.black)),
            const Spacer(
              flex: 1,
            ),
            Image.asset(
              'assets/images/logoipsum-255 1.png',
              height: 31,
            ),
            const Spacer(
              flex: 1,
            ),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kProfileView);
              },
              child:const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
//'assets/images/avatar.png'