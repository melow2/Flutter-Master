import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../data/Constants.dart';
import '../../data/SizeConfig.dart';
import '../../models/Categories.dart';
import '../../models/Product.dart';
import '../../service/fetchCategories.dart';
import '../../widget/title_text.dart';
import 'categories.dart';
import 'category_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: const TitleText(
              title: 'Browse by Categories',
            ),
          ),
          FutureBuilder<List<Category>>(
              future: fetchCategories(),
              builder: (context, snapshot) => snapshot.hasData
                  ? Categories(categories: snapshot.data!)
                  : Center(child: Image.asset("assets/ripple.gif"))),
          const Divider(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: const TitleText(title: "Recommends For You"),
          ),
          Padding(
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
          )
        ],
      ),
    );
  }
}
