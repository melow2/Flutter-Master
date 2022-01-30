import 'package:flutter/material.dart';

import '../data/SizeConfig.dart';
import '../models/Product.dart';
import 'product_info.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductInfo(product: product),
            Container(
              height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(defaultSize * 1.2),
                    topRight: Radius.circular(defaultSize * 1.2))
              ),
            )
          ],
        ),
      ),
    );
  }
}
