import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_25/create_screen.dart';
import 'package:flutter_beginner_class/23_12_25/todo.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final todos = [
    Todo(
      title: 'title 1',
      dateTime: 1234,
    ),
    Todo(
      title: 'title 2',
      dateTime: 5678,
    ),
    Todo(
      title: 'title 3',
      dateTime: 9012,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo 리스트'),
      ),
      body: ListView(
        children: todos
            .map(
              (todo) => ListTile(
                title: Text(todo.title),
                subtitle: Text('${todo.dateTime}'),
              ),
            )
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CreateScreen(),
              ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
