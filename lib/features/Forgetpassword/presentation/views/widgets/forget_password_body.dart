import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/utlis/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_text_field.dart';
import 'package:ecommerce_app/core/widgets/custon_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                    height: 83,
                    width: 185,
                    child: Text(
                      "Forgot password?",
                      style: Styles.textStyleHedears,
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  CustomTextFormField(
                    hintText: "Enter your email address",
                    preIcon: const Icon(
                      Icons.mail_outline_outlined,
                      color: kIconColor,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Wrap(children: [
                  Text(
                    "*",
                    style: Styles.textStyleHintText.copyWith(color: Colors.red),
                  ),
                 const Wrap(
                    children: [
                       Text(
                        " We will send you a message to set or reset your new password.",
                        style: Styles.textStyleHintText,
                      ),
                    ],
                  ),
                ]),
                const SizedBox(height: 30,),
                GestureDetector(child: CustomButton(title: "Submit", onPressed: () {  },), onTap: () => GoRouter.of(context).pop(),)
                ],
              )),
        ),
      ),
    );
  }
}
