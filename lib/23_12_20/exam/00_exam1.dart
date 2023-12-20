import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Birth1(),
    );
  }
}

class Birth1 extends StatelessWidget {
  const Birth1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Happy',
                  style: TextStyle(fontSize: 80),
                ),
                Text(
                  'Birthday',
                  style: TextStyle(fontSize: 80),
                ),
                Text(
                  'Sam!',
                  style: TextStyle(fontSize: 80),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'From Emma',
                      style: TextStyle(fontSize: 32),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
