import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_flutter/screens/products_overview_screen.dart';

void main() => runApp(ShopApp());

class ShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "ShopApp",
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
        home: ProductOverviewScreen());
  }
}
