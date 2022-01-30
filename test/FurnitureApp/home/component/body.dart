import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../data/SizeConfig.dart';
import '../../models/Categories.dart';
import '../../models/Product.dart';
import '../../service/fetchCategories.dart';
import '../../service/fetchProducts.dart';
import '../../widget/title_text.dart';
import 'categories.dart';
import 'recommend_products.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return SingleChildScrollView(
      child: SafeArea(
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
                builder: (context, snapshot) => snapshot.hasData
                    ? Categories(categories: snapshot.data!)
                    : Center(child: Image.asset("assets/ripple.gif"))),
            const Divider(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: const TitleText(title: "Recommends For You"),
            ),
            FutureBuilder<List<Product>>(
                future: fetchProducts(),
                builder: (context, snapshot) => snapshot.hasData
                    ? RecommendProducts(products: snapshot.data!)
                    : Center(child: Image.asset("assets/ripple.gif")))
          ],
        ),
      ),
    );
  }
}
