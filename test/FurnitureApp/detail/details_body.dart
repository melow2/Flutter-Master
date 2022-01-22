
import 'package:flutter/material.dart';

import '../models/Product.dart';
import 'details_product_description.dart';
import 'details_product_info.dart';

class DetailBody extends StatelessWidget {
  final Product product;

  const DetailBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailProductInfo(product: product),
        ProductDescription(
          product: product,
          press: () {},
        )
      ],
    ));
  }
}
