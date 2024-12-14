import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/utlis/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_page_title.dart';
import 'package:ecommerce_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: kPrimaryColor,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const CustomPageTitle(tittle: "CheckOut"),
                    const SizedBox(
                      height: 15,
                    ),
                    const Center(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 65,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/avatar.png'),
                          radius: 60,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              "Perssonal Details",
                              style: Styles.textStyle18,
                            ),
                          ],
                        ),
                        CustomTextFormField(hintText: "",)
                      ],
                    )
                  ],
                ),
              ),
            )));
  }
}
