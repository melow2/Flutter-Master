import 'package:flutter/material.dart';
import 'package:quiz_flutter/models/Transaction.dart';

import 'new_transaction.dart';
import 'transaction_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "상품주문앱",
      home: MyHomePage(),
      theme: ThemeData(
          primaryColor: Colors.teal,
          accentColor: Colors.black,
          textTheme: ThemeData.light().textTheme.copyWith(
              headline1: TextStyle(
                  fontFamily: 'Quicksnad',
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          fontFamily: 'Quicksand',
          appBarTheme: AppBarTheme(
              titleTextStyle: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 20,
                  fontWeight: FontWeight.bold))),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Transaction> userTransactions = [];

  void _addTransaction(String title, double amount) {
    var newTx = Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());
    setState(() {
      userTransactions.add(newTx);
    });
  }

  void _startAddNewTransaction(BuildContext btCx) {
    showModalBottomSheet(
        context: btCx,
        builder: (btCx) {
          return GestureDetector(
            onTap: () {},
            child: NewTransaction(_addTransaction),
            behavior: HitTestBehavior.opaque, // 뒤에있는거 클릭 x
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("상품주문앱"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: TransactionList(userTransactions),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _startAddNewTransaction(context);
        },
      ),
    );
  }
}
