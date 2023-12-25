import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_25/list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListScreen(),
    );
  }
}
