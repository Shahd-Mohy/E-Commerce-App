import 'package:ecommerce_app/features/home/presentation/view_models/category_model.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: SizedBox(
          height: 71,
          width: 65,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage(
                          category.image,
                        ),
                        fit: BoxFit.fill)),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                  child: Text(
                category.categoryName,
                style: const TextStyle(fontWeight: FontWeight.w500),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
