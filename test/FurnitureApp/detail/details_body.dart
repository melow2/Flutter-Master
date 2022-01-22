import 'package:flutter/material.dart';

import '../data/SizeConfig.dart';
import '../models/Product.dart';
import 'details_product_description.dart';
import 'details_product_info.dart';

class DetailBody extends StatelessWidget {
  final Product product;

  const DetailBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return SingleChildScrollView(
        child: SizedBox(
      width: double.infinity,
      height: SizeConfig.screenHeight,
      child: Stack(
        children: [
          DetailProductInfo(product: product),
          Positioned(
            top: defaultSize * 33.5,
            left: 0,
            right: 0,
            child: ProductDescription(
              product: product,
              press: () {},
            ),
          ),
        ],
      ),
    ));
  }
}
