import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('About'),
      backgroundColor: Colors.greenAccent[400],
      centerTitle: true,
    ), //AppBar
    body: Center(
      /** Card Widget **/
      child: Card(
        elevation: 50,
        shadowColor: Colors.black,
        color: Colors.greenAccent[100],
        child: SizedBox(
          width: 320,
          height: 640,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green[500],
                  radius: 58,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'), //NetworkImage
                    radius: 50,
                  ), //CircleAvatar
                ), //CirclAvatar
                SizedBox(
                  height: 10,
                ), //SizedBox
                Text(
                  'D.Ganapathi VPR',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.green[900],
                    fontWeight: FontWeight.w500,
                  ), //Textstyle
                ), //Text
                SizedBox(
                  height: 10,
                ), //SizedBox
                Text(
                  '''Hola! I'm from Beta section of AI&ML. I'm a TechGeeky and I like to create some new stuffs which are helpfull. I'm a quick learner and I like to read more than watching news in the morning. Now, coming into reality I'm a Hardcore Gamer(PC), I love watching Animes and Hollywood. I love Acoustic songs and I play them while doing programming... Thanks for knowing about me!
                   ''',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.green[900],
                  ), //Textstyle
                ),
                Text(
                  '''Hit me up on Instagram : Tap below ''',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.green[900],
                  ), //Textstyle
                ),
                Text(
                  '''@ajayprince_03''',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.green[900],
                  ), //Textstyle
                ),//Text
                 SizedBox(
                   width: 80, //Padding
                      child: IconButton(
                        onPressed: () async {
                          final url =
                              'https://www.instagram.com/ajayprince_03/';
                          await launch(url);
                        },
                        // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                        icon: (FaIcon(
                          FontAwesomeIcons.instagram,
                          size: 35,
                          color: Colors.deepPurpleAccent,
                        )),
                      ),
                    ),//RaisedButton
                Divider(),
                SizedBox(
                  height: 10,
                ), //SizedBox
                Text(
                  '''I Invite you all to join our Discord server and I hope you would have a alot fun!!!    See you there.. Tap below to Join.''',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.green[900],
                  ), //Textstyle
                ),
                IconButton(
                  padding: EdgeInsets.fromLTRB(0.1, 10.0, 10.0, 5.0),
                    onPressed: () async {
                      final url = 'https://discord.gg/BfuX76fAsa';
                      await launch(url);
                    },
                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                  icon: (FaIcon(FontAwesomeIcons.discord,size: 35,color: Colors.deepPurpleAccent,)),

                ),
              ],
            ), //Column
          ), //Padding
        ), //SizedBox
      ), //Card
    ), //Center
  );
}