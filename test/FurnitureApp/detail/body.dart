import 'package:flutter/material.dart';

import '../data/Constants.dart';
import '../data/SizeConfig.dart';
import '../models/Product.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    var lightTextStyle = TextStyle(color: kTextColor.withOpacity(0.6));
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
              height: defaultSize * 37.5,
              width: defaultSize * 15,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.category.toUpperCase(),
                      style: lightTextStyle,
                    ),
                    SizedBox(
                      height: defaultSize,
                    ),
                    Text(
                      product.title,
                      style: TextStyle(
                          fontSize: defaultSize * 2.4, fontWeight: FontWeight.bold, letterSpacing: -0.8, height: 1.4),
                    ),
                    SizedBox(
                      height: defaultSize * 2,
                    ),
                    Text("Form", style: lightTextStyle),
                    Text("\$${product.price}",style: TextStyle(
                      fontSize: defaultSize * 1.6,
                      fontWeight: FontWeight.bold,
                      height: 1.6
                    ),)
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
