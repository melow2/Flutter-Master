import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_flutter/providers/products.dart';
import 'package:quiz_flutter/widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          // 가로 방향 아이템 갯수.
          crossAxisCount: 2,
          // 가로 세로 비율
          childAspectRatio: 1 / 1,
          // 가로 방향 아이템 사이 간격
          crossAxisSpacing: 10,
          // 세로 방향 아이템 사이 간격.
          mainAxisSpacing: 10),
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
          value: products[i], child: ProductItem()),
      itemCount: products.length,
    );
  }
}
