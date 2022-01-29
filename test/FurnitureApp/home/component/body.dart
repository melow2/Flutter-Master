import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../data/Constants.dart';
import '../../data/SizeConfig.dart';
import '../../models/Categories.dart';
import '../../service/fetchCategories.dart';
import '../../widget/title_text.dart';
import 'category_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: const TitleText(
              title: 'Browse by Categories',
            ),
          ),
          FutureBuilder<List<Category>>(
              future: fetchCategories(),
              builder: (context, snapshot) {
                var isExist = snapshot.hasData;
                if (isExist) {
                  return Categories(categories: snapshot.data!);
                } else {
                  return const CircularProgressIndicator();
                }
              })
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  Categories({
    Key? key,
    required this.categories,
  }) : super(key: key);

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: List.generate(categories.length, (index) => CategoryCard(category: categories[index]))),
    );
  }
}
