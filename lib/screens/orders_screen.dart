import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_flutter/providers/orders.dart' show Orders;
import 'package:quiz_flutter/widgets/app_drawer.dart';
import 'package:quiz_flutter/widgets/order_item.dart';

class OrdersScreen extends StatelessWidget{

  static const routeName = '/orders';

  @override
  Widget build(BuildContext context) {
    final ordersData = Provider.of<Orders>(context);

    return Scaffold(
      appBar: AppBar(title: Text('주문내역')),
      body: ListView.builder(itemBuilder: (ctx,idx) {
        return OrderItem(ordersData.orders[idx]);
      },itemCount: ordersData.orders.length,),
      drawer: AppDrawer()
    );
  }


}