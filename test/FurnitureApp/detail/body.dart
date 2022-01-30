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
        child: Stack(
          children: [
            ProductInfo(product: product),
            ProductDescription(product: product)
          ],
        ),
      ),
    );
  }
}

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return Container(
      constraints: BoxConstraints(minHeight: defaultSize * 44),
      padding: EdgeInsets.only(top: defaultSize * 9, left: defaultSize * 2, right: defaultSize * 2),
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
          ),
          SizedBox(
            height: defaultSize * 3,
          ),
          SizedBox(
            width: double.infinity,
            child: FlatButton(
                padding: EdgeInsets.all(defaultSize * 1.5),
                color: kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                onPressed: () {},
                child: Text("Add to Cart",
                    style:
                        TextStyle(color: Colors.white, fontSize: defaultSize * 1.6, fontWeight: FontWeight.bold))),
          )
        ],
      ),
    );
  }
}
