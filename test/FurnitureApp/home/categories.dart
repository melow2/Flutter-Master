import 'package:flutter/material.dart';

import '../models/Categories.dart';
import 'category_card.dart';

class Categories extends StatelessWidget {
  final List<Category> categories;

  const Categories({
    Key? key,
    required this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
              categories.length,
                  (index) => CategoryCard(
                      category: categories[index]))),
    );
  }
}
