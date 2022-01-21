import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../data/Constants.dart';
import '../models/Product.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/arrow-long-left.svg"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
              onPressed: (){}, 
              icon: SvgPicture.asset("assets/icons/bag.svg")
          )
        ],
      ),
    );
  }
}
