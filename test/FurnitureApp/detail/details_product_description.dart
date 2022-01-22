
import 'package:flutter/material.dart';

import '../FurnitureApp.dart';
import '../data/SizeConfig.dart';
import '../models/Product.dart';

class ProductDescription extends StatelessWidget {
  final void Function() press;

  const ProductDescription({
    Key? key,
    required this.product,
    required this.press,
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
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.all(defaultSize * 1.5),
                onPressed: press,
                color: kPrimaryColor,
                child: Text(
                  "Add to Cart",
                  style: TextStyle(color: Colors.white, fontSize: defaultSize * 1.6, fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
    );
  }
}
