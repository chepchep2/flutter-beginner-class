import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_25/todo.dart';
import 'package:flutter_beginner_class/23_12_25/todolist.dart';
import 'package:intl/intl.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final _textController = TextEditingController();

  // 추가
  DateTime? _selectedDate;

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  // 추가
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          'Todo 작성',
        ),
        actions: [
          IconButton(
            onPressed: () async {
              // 추가
              if (_selectedDate != null) {
                await todos.add(Todo(
                  title: _textController.text,
                  dateTime: _selectedDate!.millisecondsSinceEpoch,
                ));
              }
              if (mounted) {
                Navigator.pop(context);
              }

              // 기존
              // await todos.add(Todo(
              //     title: _textController.text,
              //     dateTime: DateTime.now().millisecondsSinceEpoch));
              // if (mounted) {
              //   Navigator.pop(context);
              // }
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.amber),
                ),
                hintText: '오늘의 할일을 입력하세요.',
                hintStyle: const TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                _selectDate(context);
              },
              child: Text(
                _selectedDate == null
                    ? '날짜 선택'
                    : DateFormat.yMMMd().format(_selectedDate!),
              ),
            ),
          ],
        ),

        // 기존
        // child: TextField(
        //   controller: _textController,
        //   decoration: InputDecoration(
        //     border: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(10),
        //     ),
        //     enabledBorder: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(10),
        //       borderSide: const BorderSide(color: Colors.black),
        //     ),
        //     focusedBorder: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(10),
        //       borderSide: const BorderSide(color: Colors.amber),
        //     ),
        //     hintText: '오늘의 할일을 입력하세요.',
        //     hintStyle: const TextStyle(color: Colors.black),
        //   ),
        // ),
      ),
    );
  }
}
