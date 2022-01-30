
import 'package:flutter/material.dart';

import '../../data/Constants.dart';
import '../../data/SizeConfig.dart';
import '../../models/Product.dart';
import '../../widget/title_text.dart';

class ProductCard extends StatelessWidget {

  final Product product;
  final void Function() press;

  const ProductCard({
    Key? key, required this.product, required this.press,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding:  EdgeInsets.all(defaultSize *2 ),
        child: Container(
          width: defaultSize * 13.5,
          height: defaultSize * 20.5,
          decoration: BoxDecoration(color: kSecondaryColor, borderRadius: BorderRadius.circular(30)),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/spinner.gif",
                  image: product.image,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultSize),
                child: TitleText(title: product.title,),
              ),
              SizedBox(height: defaultSize /2 ,),
              Text("\$${product.price}"),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
