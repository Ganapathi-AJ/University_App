import 'package:webview_flutter/webview_flutter.dart';

import 'package:flutter/material.dart';

class Attendence extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    extendBodyBehindAppBar: true,
    appBar: AppBar(
    title: Text('Attendence'),
    centerTitle: true,
    backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    body: WebView(
      initialUrl: 'https://mruherp.com/BeesERP/Login.aspx',
      javascriptMode: JavascriptMode.unrestricted,

    )
  );
}