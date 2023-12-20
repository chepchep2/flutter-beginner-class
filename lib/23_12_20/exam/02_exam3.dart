import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Birth3(),
    );
  }
}

class Birth3 extends StatelessWidget {
  const Birth3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              const Center(
                child: Column(
                  children: [
                    Text(
                      'Happy Birthday Sam!',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '- from Emma',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              Center(child: Lottie.asset('assets/lottie/sample.json')),
            ],
          ),
        ),
      ),
    );
  }
}
