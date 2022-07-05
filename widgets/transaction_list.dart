import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

 class TransactionList extends StatelessWidget {
   final List<Transaction> transactions;

   TransactionList(this.transactions);
  @override
  Widget build(BuildContext context){
      return
        Column(
        children:transactions.map((tx){
          return Card(
            child: Row(
              children: <Widget> [
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),//EdgeInsets.symmetric
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width:2,
                    ),//Border.all
                  ),//BoxDecoration
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '\$${tx.amount}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:20,
                        color: Colors.purpleAccent),
                  ),//Text
                ),//Container

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget> [
                    Text(tx.title,
                      style:TextStyle(
                        fontSize:18,
                        fontWeight: FontWeight.bold,
                      ),//TextStyle
                    ),//Text
                    Text(
                        DateFormat.yMMMd().format(tx.date),
                        style:TextStyle(
                          fontSize:18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        )//TextStyle
                    ),//Text

                  ], //<Widget>
                )//Column
              ], //<Widget>
            ),//Row
          );//Card
        }).toList(),
      );//Column
  }
}