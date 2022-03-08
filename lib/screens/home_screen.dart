import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  final homeUrl =
      'https://raihyun.notion.site/e0adaba465f64321aeb9e50a644bfd59';
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('WebView'),
        actions: [
          IconButton(
            onPressed: () {
              if (controller == null) {
                return;
              }
              controller!.loadUrl(homeUrl);
            },
            icon: Icon(Icons.home),
          )
        ],
        centerTitle: true,
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
        initialUrl: homeUrl,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
