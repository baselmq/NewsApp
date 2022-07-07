import 'package:flutter/material.dart';
import 'package:news/components/appbar_custom.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AppWebView extends StatelessWidget {
  const AppWebView({required this.url, required this.title, Key? key})
      : super(key: key);
  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: title),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
