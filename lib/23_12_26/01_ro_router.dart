// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_26/router.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Go Router 첫 화면'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final person = Person(name: '조상우', age: 30);
            context.push('/end');

            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => EndScreen(
            //       person: person,
            //     ),
            //   ),
            // );
          },
          child: const Text('이동'),
        ),
      ),
    );
  }
}

class EndScreen extends StatelessWidget {
  final Person person;

  const EndScreen({
    super.key,
    required this.person,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EndScreen'),
      ),
      body: Center(
        child: Text(person.toString()),
      ),
    );
  }
}

class Person {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age,
  });

  @override
  String toString() => 'Person(name: $name, age: $age)';
}
