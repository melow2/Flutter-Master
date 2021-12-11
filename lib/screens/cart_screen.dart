import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_flutter/providers/cart.dart' show Cart;
import 'package:quiz_flutter/providers/orders.dart';
import 'package:quiz_flutter/widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<Cart>(context);
    print('build()~~~~~~~~~~~~~~~~~~~~~~~~~~');
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
                      onPressed: () {
                        Provider.of<Orders>(context, listen: false).addOrder(cart.items.values.toList(), cart.totalAmount);
                        cart.clear();
                      },
                      child: Text('주문하기'),
                      textColor: Theme.of(context).primaryColor)
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
              child: ListView.builder(
                  itemBuilder: (ctx, idx) => CartItem(
                        id: cart.items.values.toList()[idx].id,
                        title: cart.items.values.toList()[idx].title,
                        quantity: cart.items.values.toList()[idx].quantity,
                        price: cart.items.values.toList()[idx].price,
                        productId: cart.items.keys.toList()[idx],
                      ),
                  itemCount: cart.items.length))
        ],
      ),
    );
  }
}
