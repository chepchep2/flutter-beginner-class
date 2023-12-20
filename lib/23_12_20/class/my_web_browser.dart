import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
