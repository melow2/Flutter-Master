
import 'package:flutter/material.dart';

import '../data/SizeConfig.dart';
import '../models/Product.dart';
import 'product_card.dart';

class RecommendProduct extends StatelessWidget {

  const RecommendProduct({
    Key? key, required this.products,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    var defaultSize = SizeConfig.defaultSize!;
    return Padding(
      padding: EdgeInsets.all(defaultSize * 2),
      child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics() ,
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 0.693
          ),
          itemBuilder: (context, index) => ProductCard(product: products[index], press: (){})
      ),
    );
  }
}