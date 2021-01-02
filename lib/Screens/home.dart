import 'package:account/Widgets/transactions_widget.dart';
import 'package:account/Widgets/widgets.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  @override
  void onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          currentIndex: _currentIndex,
          selectedIconTheme: IconThemeData(size: 25, color: Colors.blue),
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: true,
          unselectedFontSize: 15.0,
          onTap: onItemTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
              activeIcon: getBottomNavItemColor()
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.credit_card_sharp), label: 'Cards'),
            BottomNavigationBarItem(
                icon: Icon(Icons.attach_money), label: 'Referrals'),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity), label: 'Account'),
          ]),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 45.0, 20.0, 0.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hello User',
                  style: TextStyle(fontSize: 22.0, color: Colors.grey[600]),
                ),
                Icon(Icons.qr_code_scanner_outlined)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.0, top: 5.0, bottom: 5.0),
              child: Text(
                '\$230\,000',
                style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[800]),
              ),
            ),
            Row(
              children: [
                Text(
                  'Total Balance',
                  style: TextStyle(color: Colors.grey[500]),
                ),
                SizedBox(width: 10.0),
                Icon(
                  Icons.visibility,
                  size: 18.0,
                  color: Colors.grey[700],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //First Container for USD balance

                  Container(
                    padding: EdgeInsets.only(
                        top: 25, bottom: 25.0, left: 10.0, right: 90.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'USD',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '243,000',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.amber[200],
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                            image: AssetImage('assets/images/bitsika.png',),
                            
                            alignment: Alignment.centerRight)),
                  ),
                  SizedBox(width: 10.0),

                  //Second Container for GHC balance
                  Container(
                    padding: EdgeInsets.only(
                        top: 25.0, bottom: 25.0, left: 10.0, right: 90.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'GHC',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height:5.0),
                        Text(
                          '243,000',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.indigo[200],
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                            image: AssetImage('assets/images/bitsika.png'),
                            alignment: Alignment.centerRight)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:5.0),
              child: Container(
                height: 60,
                  child: IconTabs(),
                ),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:0.0),
                  child: Text(
                    'Recent Activity',
                    style: TextStyle(fontSize: 22.0),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'All',
                      style:
                          TextStyle(color: Colors.blueAccent, fontSize: 20.0),
                    ),
                    SizedBox(width: 5.0),
                    Container(
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.blueAccent,
                          size: 15.0,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Colors.blueAccent, width: 1.5),
                        ))
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 11.0),
              child: Text(
                'TODAY',
                style: TextStyle(color: Colors.grey[700], fontSize: 16.0),
              ),
            ),
            SizedBox(height: 150, child: Transactions_today()),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Text(
                'LAST WEEK',
                style: TextStyle(color: Colors.grey[700], fontSize: 16.0),
              ),
            ),
            SizedBox(
              height: 150.0,
              child: Transactions_lastweek(),
            )
          ])),
    );
  }
}

getBottomNavItemColor(){
  
  return CircleAvatar(
backgroundColor: Colors.blue,
radius: 5.0,
  );
}
