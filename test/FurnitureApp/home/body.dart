import 'package:flutter/material.dart';

import '../component/TitleText.dart';
import '../data/SizeConfig.dart';
import '../models/Categories.dart';
import 'category_card.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var defaultSize = SizeConfig.defaultSize!;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: TitleText(title: "Browse by Categories"),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryCard(category: category),
                  CategoryCard(category: category),
                  CategoryCard(category: category)],
              ))
        ],
      ),
    );
  }
}
