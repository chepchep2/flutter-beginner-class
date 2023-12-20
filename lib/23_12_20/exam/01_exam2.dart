import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Birth2(),
    );
  }
}

class Birth2 extends StatelessWidget {
  const Birth2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.network(
              // 'https://i.pinimg.com/originals/d0/b7/2c/d0b72c0f7022546b01e13d545f0e66fc.jpg',
              // 'https://i.pinimg.com/originals/aa/d4/05/aad405ec5ec897914d4c9b8a335abf10.jpg',
              // 'https://i.pinimg.com/474x/3d/2e/7a/3d2e7a792ad8003134530c31837b1880.jpg',
              // 'https://i.pinimg.com/564x/e3/4b/4e/e34b4ef84b2337ca80962334e540def7.jpg',
              'https://i.pinimg.com/474x/77/eb/d5/77ebd540c21472a75ec70ec8c5d11105.jpg',
              fit: BoxFit.cover,
            ),
            const Center(
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
                  Text(
                    'From Emma',
                    style: TextStyle(fontSize: 32),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
