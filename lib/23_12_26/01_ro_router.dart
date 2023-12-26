// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_beginner_class/23_12_26/routes.dart';

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
            context.push(Uri(
              path: '/end',
              queryParameters: {'사람': jsonEncode(person.toJson())},
            ).toString());

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

  Person copyWith({
    String? name,
    int? age,
  }) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'age': age,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      name: map['name'] as String,
      age: map['age'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) =>
      Person.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Person(name: $name, age: $age)';

  @override
  bool operator ==(covariant Person other) {
    if (identical(this, other)) return true;

    return other.name == name && other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}
