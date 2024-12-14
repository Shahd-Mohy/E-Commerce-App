import 'package:ecommerce_app/features/TrendyItems/presentation/views/widgets/trendy_list_view_item.dart';
import 'package:flutter/material.dart';

class ProductHorizList extends StatelessWidget {
  const ProductHorizList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (contex, index) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: GestureDetector(child: TrendyListViewItem()));
          }),
    );
  }
}
