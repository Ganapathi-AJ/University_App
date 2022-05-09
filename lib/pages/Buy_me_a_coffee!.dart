import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BuyMeACoffee extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Ganapathi D'),
      backgroundColor: Colors.greenAccent[400],
      centerTitle: true,
    ), //AppBar
    body: Center(
      /** Card Widget **/
      child: Card(
        elevation: 50,
        shadowColor: Colors.black,
        color: Colors.greenAccent[100],
      ), //Card
    ), //Center
  );
}