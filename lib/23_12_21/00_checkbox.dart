import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/00_repository/star_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CheckBoxListScreen(),
    );
  }
}

class CheckBoxListScreen extends StatefulWidget {
  const CheckBoxListScreen({super.key});

  @override
  State<CheckBoxListScreen> createState() => _CheckBoxListScreenState();
}

class _CheckBoxListScreenState extends State<CheckBoxListScreen> {
  final repository = StarRepository();

  final favorites = <int>{};

  @override
  Widget build(BuildContext context) {
    final stars = repository.getStars();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '내가 좋아하는 야구선수',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: stars.map((e) {
          return CheckboxListTile(
            title: Text(e.title),
            value: favorites.contains(e.id),
            onChanged: (bool? value) {
              setState(() {
                if (value! == true) {
                  favorites.add(e.id);
                } else {
                  favorites.remove(e.id);
                }
              });
            },
          );
        }).toList(),
      ),
    );
  }
}
