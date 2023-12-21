import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Xylophone(),
    );
  }
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);

    return Scaffold(
      appBar: AppBar(
        title: const Text('자이로폰'),
      ),
      body: Row(
        children: [
          gunban('도', Colors.red),
          gunban('레', Colors.yellow),
        ],
      ),
    );
  }
}

Widget gunban(String text, Color color) {
  return Container(
    width: 50,
    height: double.infinity,
    color: color,
    child: Center(
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}
