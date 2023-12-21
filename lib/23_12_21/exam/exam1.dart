import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/00_repository/star_repository.dart';
import 'package:flutter_beginner_class/23_12_20/00_ui_basic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Youtube(),
    );
  }
}

class Youtube extends StatelessWidget {
  final repository = StarRepository();

  Youtube({super.key});

  @override
  Widget build(BuildContext context) {
    final stars = repository.getStars();

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.smart_display,
          color: Colors.red,
        ),
        title: const Text(
          'YouTube',
        ),
        actions: const [
          Icon(
            Icons.cast_for_education,
          ),
          Icon(
            Icons.notifications,
          ),
          Icon(
            Icons.search,
          ),
          Icon(
            Icons.face_6,
          ),
          SizedBox(width: 20),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Plus',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '구독',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '보관함',
          ),
        ],
      ),
    );
  }
}
