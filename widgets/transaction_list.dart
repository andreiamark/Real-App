import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

 class TransactionList extends StatelessWidget {
   final List<Transaction> transactions;

   TransactionList(this.transactions);


   @override
   Widget build(BuildContext context) {
     return Container(
         height: 300,
         child: transactions.isEmpty ?
         Column(
           children: <Widget>[
             Text(
               'No Transactions added yet!',
               style: Theme
                   .of(context)
                   .textTheme
                   .titleSmall,
             ),
             SizedBox(height: 10),
             Container(
               height: 200,
               child: Image.asset('assets/images/waiting.png',
                   fit: BoxFit.cover),
             )
           ],
         )
             : ListView.builder(
                 itemBuilder: (ctx, index) {
                  return Card (
                      margin:EdgeInsets.symmetric(
                          vertical:8,
                          horizontal: 5,
                  ),
                              child: ListTile(
                     leading: CircleAvatar(
                       radius: 30,
                       child: Padding(
                         padding: EdgeInsets.all(6),
                         child: FittedBox(
                           child: Text('\$${transactions[index].amount}'),
                         ),
                       ),
                     ),
                      title: Text(
                     transactions[index].title,
                     style: Theme.of(context).textTheme.titleSmall,
                      ),
                  subtitle:Text(
                    DateFormat.yMMMd().format(transactions[index].date),
                  )),);
                 },
               )
             // itemCount: transactions.length,
           );
         }
       }





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
color: Theme.of(context).primaryColor,
width:2,
),//Border.all
),//BoxDecoration
padding: EdgeInsets.all(10),
child: Text(
'\$${transactions[index].amount.toStringAsFixed(2)}',
style: TextStyle(
fontWeight: FontWeight.bold,
fontSize:20,
color: Colors.redAccent),
),//Text
),//Container

Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: <Widget> [
Text(transactions[index].title,
style:TextStyle(
fontSize:18,
fontWeight: FontWeight.bold,
),//TextStyle
),//Text
Text(
DateFormat.yMMMd().format(transactions[index].date),
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
},
itemCount: transactions.length,
),//ListView.builder
);//Container
}
}