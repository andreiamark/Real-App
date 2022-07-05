import 'package:flutter/material.dart';
import 'package:real1_app/transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}


 class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount:69.99,
      date:DateTime.now()
    ),
    Transaction(
        id: 't2',
        title: 'Weekly Groceries',
        amount:16.53,
        date:DateTime.now()),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget> [
      Container(
        width:double.infinity,
        child: Card(
          color: Colors.pink,
          child:Text('CHART!'),
          elevation: 5,
      ),
    ),
          Column(children:transactions.map((tx)
    {
      return Card(child: Text(tx.title),
      );
    }).toList(),),
          ],
         ),
      );
    }
  }

