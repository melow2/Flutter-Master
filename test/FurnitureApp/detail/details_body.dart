import 'package:flutter/material.dart';

import '../data/Constants.dart';
import '../data/SizeConfig.dart';
import '../models/Product.dart';

class DetailBody extends StatelessWidget {
  final Product product;

  const DetailBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: detail_product_info(
      product: product,
    ));
  }
}

class detail_product_info extends StatelessWidget {
  const detail_product_info({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    TextStyle lightTextStyle = TextStyle(color: kTextColor.withOpacity(0.6));
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
      height: defaultSize * 37.5,
      width: defaultSize * 15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(product.category.toUpperCase(), style: lightTextStyle),
          SizedBox(height: defaultSize),
          Text(
            product.title,
            style:
                TextStyle(fontSize: defaultSize * 2.4, fontWeight: FontWeight.bold, letterSpacing: -0.8, height: 1.4),
          ),
          SizedBox(height: defaultSize * 2),
          Text(
            "Form",
            style: lightTextStyle,
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontSize: defaultSize, fontWeight: FontWeight.bold, height: 1.6),
          )
        ],
      ),
    );
  }
}
