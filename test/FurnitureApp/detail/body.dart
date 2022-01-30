import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../data/Constants.dart';
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
              padding: EdgeInsets.only(top: defaultSize * 9, left: defaultSize * 2, right: defaultSize * 2),
              height: 500,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(defaultSize * 1.2), topRight: Radius.circular(defaultSize * 1.2))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.subTitle,
                    style: TextStyle(fontSize: defaultSize * 1.8, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: defaultSize * 3,
                  ),
                  Text(
                    product.description,
                    style: TextStyle(color: kTextColor.withOpacity(0.7), height: 1.5),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
