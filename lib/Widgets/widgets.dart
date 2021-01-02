import 'package:account/Data/tabs_info.dart';
import 'package:flutter/material.dart';

class IconTabs extends StatefulWidget {
  @override
  _IconTabsState createState() => _IconTabsState();
}

class _IconTabsState extends State<IconTabs> {
  final allTabs = getAllTabs();
  List<Tabs_info> _allTabs;

  @override
  void initState() {
    _allTabs = getAllTabs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(0),
        physics: NeverScrollableScrollPhysics(),
        itemCount: _allTabs.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Row(
               mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        padding: EdgeInsets.all(3.0),
                        child: _allTabs[index].icon,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 1.0, color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(11.0)))),
                  ]),
              Column(
                children: [
                  Row(
                    children:[
                      Padding(
                        padding: const EdgeInsets.only(top:10.0,right:20.0,left: 20.0),
                        child: Text(_allTabs[index].desc,
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w500,color: Colors.grey[800])),
                      ),] 
                  )
                ],
              )
            ],
          );
        });
  }}