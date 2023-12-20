import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_20/00_ui_basic.dart';
import 'package:flutter_beginner_class/23_12_20/model/star.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: StarListScreen(),
    );
  }
}

class StarListScreen extends StatelessWidget {
  final List<Star> stars = [
    Star(
      title: '무키베츠',
      subTitle: '무키 베츠 최고',
      imageUrl:
          'https://wallpapers.com/images/hd/mookie-betts-long-torch-y25uqlhjeuui0h9f.jpg',
      description: '어쩌고 저쩌고',
    ),
    Star(
      title: '무키베츠',
      subTitle: '무키 베츠 최고',
      imageUrl:
          'https://wallpapers.com/images/hd/mookie-betts-long-torch-y25uqlhjeuui0h9f.jpg',
      description: '어쩌고 저쩌고',
    ),
  ];

  StarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('나만의 스타'),
      ),
      body: ListView(
        children: stars.map((e) {
          return SizedBox(
            height: 500,
            child: StarWidget(star: e),
          );
        }).toList(),
      ),
    );
  }
}
