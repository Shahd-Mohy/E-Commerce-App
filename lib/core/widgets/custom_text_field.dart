import 'package:ecommerce_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      required this.hintText,
      this.preIcon,
      this.sufIcon,
      this.isobsecureText = false,
      this.tittle});

  final String hintText;
  final String? tittle;
  final Icon? preIcon;
  final Icon? sufIcon;
  Function(String)? onChanged;
  final bool isobsecureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isobsecureText,
      onChanged: onChanged,
      validator: (data) {
        if (data!.isEmpty) {
          return "Field is required!";
        }
      },
      style: Styles.textStyleHintText.copyWith(color: const Color(0xffA8A8A9)),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffF5F5F5),
        hintText: hintText,
        suffixIcon: sufIcon,
        prefixIcon: preIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xffA8A8A9),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xffA8A8A9),
          ),
        ),
      ),
    );
  }
}
