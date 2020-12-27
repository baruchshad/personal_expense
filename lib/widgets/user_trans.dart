import 'package:flutter/material.dart';

import './user_input.dart';
import './tx_cards.dart';
import '../models/transaction.dart';

class UserTrans extends StatefulWidget {
  @override
  _UserTransState createState() => _UserTransState();
}

class _UserTransState extends State<UserTrans> {
  List<Transaction> _transactions = [
    Transaction(
      id: 't1',
      title: 'New shoes',
      amount: 50.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Endmill',
      amount: 11.99,
      date: DateTime.now(),
    ),
  ];

  void _updateTrans(String id, double amount, String title, DateTime date) {
    final newTx = Transaction(
      amount: amount,
      id: id,
      date: date,
      title: title,
    );

    setState(() {
      _transactions.add(Transaction(
        amount: amount,
        id: id,
        date: date,
        title: title,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        UserInput(updateTrans: _updateTrans),
        TxCards(transactions: _transactions),
      ],
    );
  }
}
