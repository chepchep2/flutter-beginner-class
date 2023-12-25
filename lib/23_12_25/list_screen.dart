import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_25/create_screen.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo 리스트'),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('타이틀 1'),
            subtitle: Text('서브 타이틀 1'),
          ),
          ListTile(
            title: Text('타이틀 2'),
            subtitle: Text('서브 타이틀 2'),
          ),
        ],
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
