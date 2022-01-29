
import 'package:flutter/material.dart';

import '../../data/Constants.dart';
import '../../data/SizeConfig.dart';
import '../../models/Categories.dart';
import '../../widget/title_text.dart';

class CategoryCard extends StatelessWidget {

  final Category category;

  const CategoryCard({
    Key? key, required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return Padding(
      padding: EdgeInsets.all(defaultSize*2),
      child: SizedBox(
          width: defaultSize * 20.5,
          height: defaultSize * 23.5,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ClipPath(
                clipper: CategoryCustomShape(),
                child: AspectRatio(
                  aspectRatio: 1 / 0.8,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    color: kSecondaryColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TitleText(title: category.title),
                        SizedBox(
                          height: defaultSize,
                        ),
                        Text(
                          "${category.numOfProducts} + Products",
                          style: TextStyle(color: kTextColor.withOpacity(0.6)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: FadeInImage.assetNetwork(placeholder: "assets/spinner.gif", image: category.image))
            ],
          )),
    );
  }
}

class CategoryCustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double height = size.height;
    double width = size.width;
    double cornerSize = 30;

    path.lineTo(0, height - cornerSize);
    path.quadraticBezierTo(0, height, cornerSize, height);
    path.lineTo(width - cornerSize, height);
    path.quadraticBezierTo(width, height, width, height - cornerSize);
    path.lineTo(width, cornerSize);
    path.quadraticBezierTo(width, 0, width - cornerSize, 0);
    path.lineTo(cornerSize, cornerSize * 0.75);
    path.quadraticBezierTo(0, cornerSize, 0, cornerSize * 2);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
