import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"ShopApp",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:MyShop()
    );
  }
}

class MyShop extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyShop')),
      body: Center(
        child: Text('쇼핑몰 앱을 한번 만들어 봅시다.')
      )
    );
  }
}