import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/widgets/contacts.dart';
import 'package:ecommerce_app/core/utlis/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_text_field.dart';
import 'package:ecommerce_app/core/widgets/custon_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

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
                    "Create an account",
                    style: Styles.textStyleHedears,
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                CustomTextFormField(
                  hintText: "Username or Email",
                  preIcon: const Icon(
                    Icons.person,
                    color: kIconColor,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  hintText: 'Password',
                  sufIcon: const Icon(
                    Icons.remove_red_eye_outlined,
                    color: kIconColor,
                  ),
                  preIcon: const Icon(
                    Icons.lock,
                    color: kIconColor,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  hintText: 'Confirm Password',
                  sufIcon: const Icon(
                    Icons.remove_red_eye_outlined,
                    color: kIconColor,
                  ),
                  preIcon: const Icon(
                    Icons.lock,
                    color: kIconColor,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Wrap(children: [
                  const Text(
                    "By clicking the ",
                    style: Styles.textStyleHintText,
                  ),
                  Text(
                    "Register",
                    style: Styles.textStyleHintText.copyWith(color: Colors.red),
                  ),
                  const Text(
                    "button , you agree to the public offer.",
                    style: Styles.textStyleHintText,
                  ),
                ]),
                const SizedBox(
                  height: 35,
                ),
                CustomButton(
                  onPressed: () {
                    
                  },
                  title: "Create Account",
                ),
                const SizedBox(
                  height: 35,
                ),
                const Contacts(),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Container(
                    height: 20,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Center the Row
                      children: [
                        const Text(
                          "I Already Have an Account..",
                          style: Styles.textStyleHintText,
                        ),
                        GestureDetector(
                          onTap: () => GoRouter.of(context).pop(),
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
