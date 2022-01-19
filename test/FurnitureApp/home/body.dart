import 'package:flutter/material.dart';

import '../component/TitleText.dart';
import '../data/SizeConfig.dart';
import '../models/Categories.dart';
import '../services/fetchCategories.dart';
import 'categories.dart';
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
          FutureBuilder<List<Category>>(
              future: fetchCategories(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var data = snapshot.data as List<Category>;
                  return Categories(categories: data);
                } else {
                  return Center(
                    child: Image.asset("assets/ripple.gif"),
                  );
                }
              }),
          Divider(height: 5,)
        ],
      ),
    );
  }
}
