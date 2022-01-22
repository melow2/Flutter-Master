import 'package:flutter/material.dart';

import '../data/SizeConfig.dart';
import '../models/Product.dart';

class DetailBody extends StatelessWidget {
  final Product product;

  const DetailBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return SingleChildScrollView(
      child: Container(
        height: defaultSize * 37.5,
        width: defaultSize * 15,
        color: Colors.blueGrey,
      )
    );
  }
}
