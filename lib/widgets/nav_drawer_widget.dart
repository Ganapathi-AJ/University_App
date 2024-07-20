import 'package:chatbot/pages/Buy_me_a_coffee!.dart';
import 'package:chatbot/pages/notices%20and%20events.dart';
import 'package:chatbot/pages/university_resources.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:chatbot/pages/favourites_page.dart';
import 'package:chatbot/pages/about_page.dart';
import 'package:chatbot/pages/user_page.dart';
import 'package:chatbot/pages/attendence_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = 'Pic of the Month';
    final email = 'IG: ajaystechie';
    final urlImage =
        'https://images.unsplash.com/photo-1641750875717-8c98badfd9a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80';

    return Drawer(
      child: Material(
        color: Colors.purple,
        child: ListView(
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => UserPage(
                  name: name,
                  urlImage: urlImage,
                ),
              )),
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  buildSearchField(),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'UNIVERSITY Resources',
                    icon: Icons.drive_file_move,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 24),
                  buildMenuItem(
                      text: 'Attendence',
                      icon: Icons.account_tree_outlined,

                      onClicked: () => selectedItem(context, 1)
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Notices and Events',
                    icon: Icons.workspaces_outline,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Favourites',
                    icon: Icons.favorite_border,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  const SizedBox(height: 24),
                  Divider(color: Colors.white70),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'About',
                    icon: Icons.info,
                    onClicked: () => selectedItem(context, 4),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Buy me a Coffee!',
                    icon: Icons.coffee,
                    onClicked: () => selectedItem(context, 5),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Updates',
                    icon: Icons.update,
                    onClicked: () => selectedItem(context, 6),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Notifications',
                    icon: Icons.notifications_outlined,
                    onClicked: () => selectedItem(context, 7),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 24,
                backgroundColor: Color.fromRGBO(30, 60, 168, 1),
                child: Icon(Icons.add_comment_outlined, color: Colors.white),
              )
            ],
          ),
        ),
      );

  Widget buildSearchField() {
    final color = Colors.white;

    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(
            CustomPageRoute(child: UniversityResources()),
        );
        break;

      case 1:
        Fluttertoast.showToast(
            msg: "Tap back to go  back",
            toastLength: Toast.LENGTH_SHORT
        );
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Attendence(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => N_E()
        ));
        break;
        break;
      case 3:
        Fluttertoast.showToast(msg: "Coming soon...");
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => About()
        ));
        break;
      case 5:
        Fluttertoast.showToast(msg: "Coming soon...");

        break;
      case 6:
        Fluttertoast.showToast(msg: "Coming soon...");
        break;
      case 7:
        Fluttertoast.showToast(msg: "Coming soon...");
        break;


    }
  }
}

class CustomPageRoute extends PageRouteBuilder{
  final Widget child;

  CustomPageRoute({
    required this.child,
}) : super(
    transitionDuration: Duration(seconds: 1),
    pageBuilder: (context, animation, secondaryAnimation) => child,
  );
 @override
 Widget buildTransitions(BuildContext context, Animation<double> animation,
     Animation<double> secondaryAnimation, Widget child) =>
     SlideTransition(
         position: Tween<Offset>(
           begin: Offset(-1,0),
           end: Offset.zero,
         ).animate(animation),
         child: child
     );

}
