import 'package:flutter/material.dart';

import '../component/TitleText.dart';
import '../data/Constants.dart';
import '../data/SizeConfig.dart';
import '../models/Categories.dart';
import '../models/Product.dart';
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
          Divider(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: TitleText(title: "Recommends For You"),
          ),
          Container(
            width: defaultSize * 14.5,
            decoration: BoxDecoration(color: kSecondaryColor, borderRadius: BorderRadius.circular(30)),
            child: AspectRatio(
              aspectRatio: 0.693,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: FadeInImage.assetNetwork(
                      placeholder: "assets/spinner.gif",
                      image: product.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultSize),
                    child: TitleText(title: product.title),
                  ),
                  SizedBox(height: defaultSize /2,),
                  Text("\$${product.price}"),
                  Spacer()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
