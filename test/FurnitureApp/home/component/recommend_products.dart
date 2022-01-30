import 'package:flutter/material.dart';

import '../../data/SizeConfig.dart';
import '../../detail/detail_screen.dart';
import '../../models/Product.dart';
import 'product_card.dart';

class RecommendProducts extends StatelessWidget {
  final List<Product> products;

  const RecommendProducts({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return Padding(
      padding: EdgeInsets.all(defaultSize * 2),
      child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: SizeConfig.orientation! == Orientation.portrait ? 2 : 4,
              childAspectRatio: 1 / 1.4,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20),
          itemBuilder: (context, index) => ProductCard(product: products[index], press: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => DetailScreen(product: products[index])
            ));
          })),
    );
  }
}
