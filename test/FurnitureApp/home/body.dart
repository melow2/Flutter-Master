import 'package:flutter/material.dart';

import '../component/TitleText.dart';
import '../data/SizeConfig.dart';
import '../models/Categories.dart';
import '../models/Product.dart';
import '../services/fetchCategories.dart';
import '../services/fetchProducts.dart';
import 'categories.dart';
import 'product_card.dart';
import 'recommend_product.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var defaultSize = SizeConfig.defaultSize!;
    return SingleChildScrollView(
      child: SafeArea(
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
            FutureBuilder<List<Product>>(
              future: fetchProducts(),
                builder: (context,snapshot){
                if(snapshot.hasData){
                  var data = snapshot.data as List<Product>;
                  return RecommendProduct(products: data);
                }else return Center(
                  child: Image.asset("assets/ripple.gif"),
                );
            })
     
          ],
        ),
      ),
    );
  }
}

