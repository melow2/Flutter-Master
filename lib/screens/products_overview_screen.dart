import 'package:flutter/material.dart';
import 'package:quiz_flutter/models/product.dart';
import 'package:quiz_flutter/widgets/product_grid.dart';

class ProductOverviewScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyShop')),
      body: ProductsGrid()
    );
  }
}