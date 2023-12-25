import 'package:flutter/material.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Todo 작성',
        ),
        actions: const [
          Icon(
            Icons.done,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
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
