import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


int tabNumber = 0;
var tabBank;

class Tabs_info{
Widget icon;
String desc;



Tabs_info({
  this.icon, this.desc
});
}

List<Tabs_info> getAllTabs() => [
  Tabs_info(
    icon: Icon(Icons.add,size: 20),
    desc: 'Topup'
  ),
   Tabs_info(
    icon: Icon(Icons.call_made,size: 20,),
    desc: 'Payout/Airtime'
  ),
   Tabs_info(
    icon: Icon(Icons.near_me,size: 20),
    desc: 'Send To Friend'
  )
];


getTabIcon(tabNumber) {
  return tabBank[tabNumber].icon;
}

getTabDesc(tabNumber) {
  return tabBank[tabNumber].desc;
}