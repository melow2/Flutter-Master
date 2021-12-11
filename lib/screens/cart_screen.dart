import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_flutter/providers/cart.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<Cart>(context, listen: false);

    return Scaffold(
      appBar: AppBar(title: Text('내 카트')),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('주문금액', style: TextStyle(fontSize: 18)),
                  Spacer(),
                  Chip(
                    label: Text('\$${cart.totalAmount}'),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  FlatButton(
                      onPressed: () {},
                      child: Text('주문하기'),
                      textColor: Theme.of(context).primaryColor)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
