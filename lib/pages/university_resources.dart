import 'package:chatbot/pages/subpages/CSE.dart';
import 'package:chatbot/pages/subpages/CyberS.dart';
import 'package:chatbot/pages/subpages/DS.dart';
import 'package:chatbot/pages/subpages/IOT.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:chatbot/pages/subpages/AI.dart';

class UniversityResources extends StatefulWidget {
  @override
  State<UniversityResources> createState() => _UniversityResourcesState();
}

class _UniversityResourcesState extends State<UniversityResources> {
  int index = 2;

  final screens = [
    CSE(),
    DS(),
    AI(),
    CyberS(),
    IOT(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Text('CSE',
        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21)),
      Text('DS',
        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 23)),
      Text('AI',
        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 23)),
      Text('CS',
        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 23)),
      Text('IOT',
        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 23)),
    ];
    return Container(
      color: Colors.white,
      child: SafeArea(
        top: false,
        child: ClipRect(
          child: Scaffold(
            extendBody: true,
            backgroundColor: Colors.blue,
            appBar: AppBar(
              title: Text('UNIVERSITY Resources'),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: screens[index],
            bottomNavigationBar: CurvedNavigationBar(
              color: Colors.blue,
              buttonBackgroundColor: Colors.yellowAccent,
              backgroundColor: Colors.transparent,
              height: 60,
              index: index,
              items: items,
              onTap: (index) => setState(() => this.index = index),
            ),
          ),
        ),
      ),
    );
    ;
  }
}
