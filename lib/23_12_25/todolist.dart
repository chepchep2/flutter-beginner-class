import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_25/list_screen.dart';
import 'package:flutter_beginner_class/23_12_25/todo.dart';
import 'package:hive_flutter/hive_flutter.dart';

late final Box<Todo> todos;

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TodoAdapter());
  todos = await Hive.openBox<Todo>('todolist.db');
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
