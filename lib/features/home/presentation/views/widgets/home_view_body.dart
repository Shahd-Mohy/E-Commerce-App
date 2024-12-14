import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/widgets/custom_appbar.dart';
import 'package:ecommerce_app/core/widgets/custom_navigation_bar.dart';
import 'package:ecommerce_app/core/widgets/custom_search_bar.dart';
import 'package:ecommerce_app/core/widgets/custom_theird_bar.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/category_list_view.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/classifying_offers.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/deal_of_the_day.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/offers_prom.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/product_horiz_list.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/season_offers.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/special_offers.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/trending_products.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: kPagesColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomAppBar(),
                CustomSearchBar(),
                CustomTheirdBar(),
                CategoryListview(),
                OffersProm(),
                DealOfTheDay(),
                ProductHorizList(),
                SpecialOffers(),
                ClassifyingOffers(),
                TrendyProductsProm(),
                ProductHorizList(),
                SeasonOffers()
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomNavigationBar(),
      ),
    );
  }
}
