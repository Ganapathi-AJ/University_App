import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class N_E extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      extendBodyBehindAppBar: true,
      body: WebView(
        initialUrl: 'https://candylx0101.wixsite.com/universitystuff',
        javascriptMode: JavascriptMode.unrestricted,

      )
  );
}