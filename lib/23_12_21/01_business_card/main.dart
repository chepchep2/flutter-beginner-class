import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_21/01_business_card/business_card_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BusinessCardApp(),
    );
  }
}
