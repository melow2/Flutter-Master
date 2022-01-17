import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_flutter/providers/cart.dart';
import 'package:quiz_flutter/providers/orders.dart';
import 'package:quiz_flutter/screens/cart_screen.dart';
import 'package:quiz_flutter/screens/orders_screen.dart';
import 'package:quiz_flutter/screens/product_detail_screen.dart';
import 'package:quiz_flutter/screens/products_overview_screen.dart';

import 'providers/products.dart';

void main() => runApp(ShopApp());

class ShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Products()),
        ChangeNotifierProvider(create: (ctx) => Cart()),
        ChangeNotifierProvider(create: (ctx) => Orders(),)
      ],
      child: MaterialApp(
        title: "ShopApp",
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',MaterialPageRoute
        ),
        home: ProductOverviewScreen(),
        routes: {
          CartScreen.routeName: (ctx) => CartScreen(),
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen()
          },
      ),
    );
  }
}
