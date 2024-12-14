import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/utlis/app_router.dart';
import 'package:ecommerce_app/core/widgets/contacts.dart';
import 'package:ecommerce_app/core/utlis/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_text_field.dart';
import 'package:ecommerce_app/core/widgets/custon_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

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
                    "Welcome Back!",
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
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () =>
                          GoRouter.of(context).push(AppRouter.kForgetassword),
                      child: Text(
                        "Forget Password!",
                        style: Styles.textStyleHintText
                            .copyWith(color: Colors.red),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.kGetStarted);
                  },
                  title: "Login",
                ),
                const SizedBox(
                  height: 50,
                ),
                const Contacts(),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Create An Account..",
                          style: Styles.textStyleHintText,
                        ),
                        GestureDetector(
                          onTap: () =>
                              GoRouter.of(context).push(AppRouter.kSignUpView),
                          child: const Text(
                            " Sign Up",
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
