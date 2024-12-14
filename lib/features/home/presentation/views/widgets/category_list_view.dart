import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/home/presentation/view_models/category_model.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategoryListview extends StatelessWidget {
  const CategoryListview({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(image: "assets/images/Bueaty.png", categoryName: "Bueaty"),
    CategoryModel(image: "assets/images/Fashon.png", categoryName: "Fashion"),
    CategoryModel(image: "assets/images/Kids.png", categoryName: "Kids"),
    CategoryModel(image: "assets/images/men.png", categoryName: "Men"),
    CategoryModel(image: "assets/images/Women.png", categoryName: "Women"),
    CategoryModel(image: "assets/images/Mobiles.jpg", categoryName: "Mobiles"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      height: 90,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
