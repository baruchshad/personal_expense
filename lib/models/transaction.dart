import 'package:flutter/foundation.dart';

class Transaction {
  final String id;
  final double amount;
  final String title;
  final DateTime date;

  Transaction({
    @required this.amount,
    @required this.id,
    @required this.date,
    @required this.title,
  });
}
