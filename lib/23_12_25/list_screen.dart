import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_25/create_screen.dart';
import 'package:flutter_beginner_class/23_12_25/todo_item.dart';
import 'package:flutter_beginner_class/23_12_25/todolist.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Todo 리스트'),
      ),
      body: ListView(
        children: todos.values
            .map((e) => TodoItem(
                  todo: e,
                  onTap: (todo) async {
                    todo.isDone = !todo.isDone;
                    await todo.save();

                    setState(() {});
                  },
                  onDelete: (todo) async {
                    await todo.delete();

                    setState(() {});
                  },
                ))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () async {
          await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CreateScreen(),
              ));

          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
