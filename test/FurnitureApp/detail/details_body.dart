import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../data/Constants.dart';
import '../data/SizeConfig.dart';
import '../models/Product.dart';
import 'details_product_info.dart';

class DetailBody extends StatelessWidget {
  final Product product;

  const DetailBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: DetailProductInfo(product: product,)
    );
  }
}
