import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

var now = DateTime.now();
int transactionNumber = 0;
var transactionBank;

class Today_transaction_info{
String customer_image;
String customer_name;
String username;
int amount;
String transaction_time;
Widget transaction_color;


Today_transaction_info({
 this.customer_image, this.customer_name, this.username,this.amount,this.transaction_time,this.transaction_color
});
}

List<Today_transaction_info> getAllTransactions() => [
  Today_transaction_info(
    customer_image: 'assets/images/dzifa3.jpeg',
    customer_name:'Afia Dzifa',
    username: '\$dzifa',
    amount: -100,
    transaction_time:'${now.month}/${now.day}/${now.year} ${now.hour}:${now.minute}',
    transaction_color: Icon(Icons.lens,color: Colors.redAccent,size: 10),

  ),
  Today_transaction_info(
    customer_image: 'assets/images/dzifa2.jpeg',
    customer_name:'Afia Dzifa ',
    username: '\$dzifa',
    amount:100,
    transaction_time:'${now.month}/${now.day}/${now.year} ${now.hour}:${now.minute}',
    transaction_color: Icon(Icons.lens,color: Colors.green,size: 10)

  ),
   
];


getTabIcon(tabNumber) {
  return transactionBank[tabNumber].icon;
}

getTabDesc(tabNumber) {
  return transactionBank[tabNumber].desc;
}




class Older_transaction_info{
String customer_image;
String customer_name;
String username;
int amount;
String transaction_time;
Widget transaction_color;


Older_transaction_info({
 this.customer_image, this.customer_name, this.username,this.amount,this.transaction_time,this.transaction_color
});
}

List<Today_transaction_info> getOlderTransactions() => [
  Today_transaction_info(
    customer_image: 'assets/images/dzifa3.jpeg',
    customer_name:'Afia Dzifa',
    username: '\$dzifa',
    amount: -100,
    transaction_time:'${now.month}/${now.day}/${now.year} ${now.hour}:${now.minute}',
    transaction_color: Icon(Icons.lens,color: Colors.redAccent,)

  ),
  Today_transaction_info(
    customer_image: 'assets/images/dzifa2.jpeg',
    customer_name:'Afia Dzifa ',
    username: '\$dzifa',
    amount:100,
    transaction_time:'${now.month}/${now.day}/${now.year} ${now.hour}:${now.minute}',
    transaction_color: Icon(Icons.lens,color: Colors.green,)

  ),
   
];


