
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:quiz_flutter/models/Transaction.dart';

class TransactionList extends StatelessWidget {
  List<Transaction> _transactions = [];

  TransactionList(this._transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: _transactions.isEmpty
          ? Image.asset('assets/images/flower_ruppy.jpeg')
          : ListView.builder(
        itemBuilder: (context, idx) {
          return Card(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(border: Border.all(color: Theme.of(context).primaryColor, width: 2)),
                  child: Text('\$${_transactions[idx].amount.toStringAsFixed(2)}'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _transactions[idx].title,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      DateFormat('yyyy-mm-dd').format(_transactions[idx].date),
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          );
        },
        itemCount: _transactions.length,
      ),
    );
  }
}