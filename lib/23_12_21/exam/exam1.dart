import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/00_repository/star_repository.dart';
import 'package:flutter_beginner_class/23_12_20/00_ui_basic.dart';
import 'package:flutter_beginner_class/23_12_21/exam/body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const Youtube(),
    );
  }
}

class Youtube extends StatelessWidget {
  const Youtube({super.key});

  @override
  Widget build(BuildContext context) {
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
          Icon(Icons.cast_for_education),
          Icon(Icons.notifications),
          Icon(Icons.search),
          Icon(Icons.face_6),
          SizedBox(width: 20),
        ],
      ),
      body: Body(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // 이 부분을 추가해야 5개가 보임..
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.propane_outlined),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline, size: 50),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            label: '구독',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline_outlined),
            label: '보관함',
          ),
        ],
      ),
    );
  }
}
