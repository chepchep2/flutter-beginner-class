import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyWebBrowser());
  }
}

class MyWebBrowser extends StatefulWidget {
  const MyWebBrowser({super.key});

  @override
  State<MyWebBrowser> createState() => _MyWebBrowserState();
}

class _MyWebBrowserState extends State<MyWebBrowser> {
  late WebViewController _webViewController;

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('나만의 웹브라우저'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              _webViewController.loadUrl(value);
            },
            itemBuilder: (context) => [
              const PopupMenuItem<String>(
                value: 'https://www.google.com',
                child: Text('구글'),
              ),
              const PopupMenuItem<String>(
                value: 'https://www.naver.com',
                child: Text('네이버'),
              ),
              const PopupMenuItem<String>(
                value: 'https://www.kakao.com',
                child: Text('카카오'),
              ),
            ],
          ),
        ],
      ),
      body: WillPopScope(
        onWillPop: () async {
          if (await _webViewController.canGoBack()) {
            await _webViewController.goBack();
            return false;
          }
          return true;
        },
        child: WebView(
          initialUrl: 'https://flutter.dev',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (controller) {
            _webViewController = controller;
          },
        ),
      ),
    );
  }
}
