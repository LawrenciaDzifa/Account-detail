import 'package:account/Data/transactions_info.dart';
import 'package:flutter/material.dart';

//TODAYTRANSACTIONS

class Transactions_today extends StatefulWidget {
  @override
  _Transactions_todayState createState() => _Transactions_todayState();
}

class _Transactions_todayState extends State<Transactions_today> {
  DateTime now = DateTime.now();

  final allTransactions = getAllTransactions();

  List<Today_transaction_info> _allTransactions;

  @override
  void initState() {
    _allTransactions = getAllTransactions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(top: 10.0),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 13.0, right: 5),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              _allTransactions[index].customer_image),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: Column(
                  children: [
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          _allTransactions[index].customer_name,
                          style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[800]),
                        ),
                        SizedBox(width: 130.0),
                        Text(
                          '\$ ${_allTransactions[index].amount}',
                          style: TextStyle(
                              fontSize: 19.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[800]),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Text(
                        _allTransactions[index].username,
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[500]),
                      ),
                      SizedBox(width: 90),
                      Text(
                        _allTransactions[index].transaction_time,
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[500]),
                      ),
                    ]),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10.0,left:2),
                child: _allTransactions[index].transaction_color,
              )
            ],
          );
        });
  }
}

//LAST WEEK TRANSACTIONS
class Transactions_lastweek extends StatefulWidget {
  @override
  _Transactions_lastweekState createState() => _Transactions_lastweekState();
}

class _Transactions_lastweekState extends State<Transactions_lastweek> {
  DateTime now = DateTime.now();
  final olderTransactions = getOlderTransactions();

  List<Today_transaction_info> _olderTransactions;

  @override
  void initState() {
    _olderTransactions = getAllTransactions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(top: 10.0),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 13.0, right: 5),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              _olderTransactions[index].customer_image),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          _olderTransactions[index].customer_name,
                          style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[800]),
                        ),
                        SizedBox(width: 130),
                        Text(
                          '\$${_olderTransactions[index].amount}',
                          style: TextStyle(
                              fontSize: 19.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[800]),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Text(
                        _olderTransactions[index].username,
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[500]),
                      ),
                      SizedBox(width: 90),
                      Text(
                        '${now.month}/${now.day}/${now.year} ${now.hour}:${now.minute}',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[500]),
                      ),
                    ]),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10.0,left:2),
                child: _olderTransactions[index].transaction_color,
              )
            ],
          );
        });
  }
}
