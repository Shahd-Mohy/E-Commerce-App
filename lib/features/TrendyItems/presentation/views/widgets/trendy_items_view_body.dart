import 'package:ecommerce_app/core/widgets/custom_appbar.dart';
import 'package:ecommerce_app/core/widgets/custom_navigation_bar.dart';
import 'package:ecommerce_app/core/widgets/custom_search_bar.dart';
import 'package:ecommerce_app/core/widgets/custom_theird_bar.dart';
import 'package:ecommerce_app/features/TrendyItems/presentation/views/widgets/products_list_view.dart';
import 'package:flutter/material.dart';

class TrendyItemsViewBody extends StatelessWidget {
  const TrendyItemsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomAppBar(),
                  CustomSearchBar(),
                  CustomTheirdBar(),
                  Flexible(fit: FlexFit.loose, child: TringingProducts())
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: const CustomNavigationBar(),
      ),
    );
  }
}
