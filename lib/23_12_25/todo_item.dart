import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_25/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  final Function(Todo) onTap;

  const TodoItem({
    super.key,
    required this.todo,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onTap(todo);
      },
      leading: todo.isDone
          ? const Icon(Icons.check_circle, color: Colors.red)
          : const Icon(
              Icons.check_circle_outline,
            ),
      title: Text(
        todo.title,
        style: TextStyle(color: todo.isDone ? Colors.grey : Colors.black),
      ),
      subtitle: Text(
        '${todo.dateTime}',
        style: TextStyle(color: todo.isDone ? Colors.grey : Colors.black),
      ),
    );
  }
}
