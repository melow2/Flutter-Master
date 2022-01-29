import 'package:flutter/material.dart';

import '../../data/Constants.dart';
import '../../data/SizeConfig.dart';
import '../../models/Categories.dart';
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
          CategoryCard(category: category,)
        ],
      ),
    );
  }
}