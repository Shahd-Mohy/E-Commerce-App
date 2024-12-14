import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: Container(
          height: 40,
          width: MediaQuery.of(context).size.width,
          child: TextField(
            decoration: InputDecoration(
              
                filled: true,
                fillColor: kPrimaryColor,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: kPrimaryColor,
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: kPrimaryColor,
                    )),
                hintText: 'Search any product ',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: kTextFieldColor,
                ),
                suffixIcon: IconButton(
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    icon: Icon(
                      Icons.mic,
                      color: kTextFieldColor,
                    )),
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: const Opacity(
                    opacity: 0.8,
                    child: const Icon(
                      color: kTextFieldColor,
                      Icons.search_rounded,
                      size: 24,
                    ),
                  ),
                )),
          ),
        ));
  }
}
