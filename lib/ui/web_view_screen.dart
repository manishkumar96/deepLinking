import 'package:flutter/material.dart';
import 'package:web_view_flutter/helper/api_constants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({Key? key}) : super(key: key);

  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: WebView(
      initialUrl: ApiConstants.webViewUrl,
      javascriptMode: JavascriptMode.unrestricted,
    ));
  }
}
