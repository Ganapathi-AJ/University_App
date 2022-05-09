import 'dart:async';

import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'package:intl/intl.dart';
import 'package:chatbot/widgets/nav_drawer_widget.dart';
//import 'package:fluttertoast/fluttertoast.dart';


void main()  {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MRU Chat Bot!',
      //theme: ThemeData.light(),
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

@override
_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {


  void response(query) async {
    AuthGoogle authGoogle = await AuthGoogle(
        fileJson: "assets/service.json")
        .build();
    Dialogflow dialogflow =
    Dialogflow(authGoogle: authGoogle, language: Language.english);
    AIResponse aiResponse = await dialogflow.detectIntent(query);
    setState(() {
      messsages.insert(0, {
        "data": 0,
        "message": aiResponse.getListMessage()[0]["text"]["text"][0].toString()
      });
    });


    print(aiResponse.getListMessage()[0]["text"]["text"][0].toString());
   }

  final messageInsert = TextEditingController();
  List<Map> messsages = [];


  @override
  Widget build(BuildContext context)  {

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bg_bot.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.transparent.withOpacity(0.5), BlendMode.softLight),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(
            "MRU Chat Bot",
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 15, bottom: 10),
                child: Text(
                  "Today, ${DateFormat("Hm").format(DateTime.now())}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Flexible(
                  child: ListView.builder(
                      reverse: true,
                      itemCount: messsages.length,
                      itemBuilder: (context, index) => chat(
                          messsages[index]["message"].toString(),
                          messsages[index]["data"]))),
              SizedBox(
                height: 20,
              ),
              Divider(
                height: 20,
                thickness: 5,
                //indent: 20,
                endIndent: 0,
              ),
              Container(
                color: Colors.transparent,
                child: ListTile(
                  leading: IconButton(
                    iconSize: 35,
                    icon: Icon(Icons.volunteer_activism, color: Colors.white),
                    onPressed: () {},
                  ),
                  title: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.white,
                    ),
                    //padding: EdgeInsets.only(left: 15),
                    child: TextFormField(
                      controller: messageInsert,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding:
                            EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 15.0),
                        hintText: "  Type something...",
                        hintStyle: TextStyle(color: Colors.black26),
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.purple,
                            width: 2.0,
                          ),
                        ),
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                      style: TextStyle(fontSize: 16, color: Colors.black),
                      onChanged: (value) {},
                    ),
                  ),
                  trailing: FloatingActionButton(

                    child: Icon(Icons.send,color: Colors.white,size: 23,),
                    backgroundColor: Colors.blue,
                    elevation: 3,
                      onPressed: () {
                        if (messageInsert.text.isEmpty) {
                          print("empty message");
                        }
                        else {
                          setState(() {
                            messsages.insert(
                                0, {"data": 1, "message": messageInsert.text});
                          });
                          response(messageInsert.text);
                          messageInsert.clear();

                        }
                        FocusScopeNode currentFocus = FocusScope.of(context);
                        if (!currentFocus.hasPrimaryFocus) {
                          currentFocus.unfocus();
                        }
                      }),
                ),
              ),

              //SizedBox(
              //  height: 10.0,
              //)
            ],
          ),
        ),
      ),
    );
  }

  //for better one i have use the bubble package check out the pubspec.yaml

  Widget chat(String message, int data) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),

      child: Row(
          mainAxisAlignment: data == 1 ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [

            data == 0 ? Container(
              height: 50,
              width: 50,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/robot.jpg"),
              ),
            ) : Container(),

        Padding(
        padding: EdgeInsets.all(10.0),
        child: Bubble(
            radius: Radius.circular(15.0),
            color: data == 0 ? Color.fromRGBO(23, 157, 139, 1) : Colors.orangeAccent,
            elevation: 0.0,

            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[

                  SizedBox(
                    width: 10.0,
                  ),
                  Flexible(
                      child: Container(
                        constraints: BoxConstraints( maxWidth: 200),
                        child: Text(
                          message,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              ),
            )),
      ),


            /*data == 1? Container(
              height: 60,
              width: 60,
              child: CircleAvatar(
                //backgroundImage: AssetImage("assets/default.jpg"),
              ),
            ) : Container(),*/

          ],
        ),
    );
  }
}