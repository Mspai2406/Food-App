import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class OrderItem
{
  String number;
  String text;
  String secondarytext;
  String amount;
  OrderItem({
    @required this.number, @required this.text,@required this.secondarytext, @required this.amount
  });
}