import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_25/todo.dart';
import 'package:flutter_beginner_class/23_12_25/todolist.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Todo 작성',
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await todos.add(Todo(
                  title: _textController.text,
                  dateTime: DateTime.now().millisecondsSinceEpoch));
              if (mounted) {
                Navigator.pop(context);
              }
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: _textController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: '오늘의 할일을 입력하세요.',
            hintStyle: const TextStyle(color: Colors.red),
            // filled: true,
            // fillColor: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
