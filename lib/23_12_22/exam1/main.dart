import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Starbucks(),
    );
  }
}

class Starbucks extends StatefulWidget {
  bool extended = false;

  Starbucks({super.key});

  @override
  State<Starbucks> createState() => _StarbucksState();
}

class _StarbucksState extends State<Starbucks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Image.asset('assets/starbucks-image/starbucks_01.png'),
            Container(
              child: const Row(
                children: [
                  Column(),
                  Text('0 / 5 asd'),
                ],
              ),
            ),
            Image.asset(
                'assets/starbucks-image/01_01_2023_winter_e-frequency.png'),
            Image.asset('assets/starbucks-image/02_01_siren_order.png'),
            Container(
              child: const Row(
                children: [
                  Column(),
                  Text('0 / 5 asd'),
                ],
              ),
            ),
            Image.asset('assets/starbucks-image/03_01_chrismas_event.png'),
            Container(
              child: const Row(
                children: [
                  Column(),
                  Text('What\'s New'),
                ],
              ),
            ),
            Image.asset('assets/starbucks-image/05_01_card.png'),
            Image.asset('assets/starbucks-image/05_02_card.png'),
            Container(
              child: const Row(
                children: [
                  Column(),
                  Text('누구누구님을 위한 추천 메뉴'),
                ],
              ),
            ),
            Image.asset('assets/starbucks-image/06_01_card.png'),
            Image.asset('assets/starbucks-image/06_02_card.png'),
            Image.asset('assets/starbucks-image/06_03_card.png'),
            Image.asset('assets/starbucks-image/06_04_card.png'),
            Image.asset('assets/starbucks-image/06_05_card.png'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('delivery'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'Pay'),
          BottomNavigationBarItem(icon: Icon(Icons.coffee), label: 'Order'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'Other'),
        ],
      ),
    );
  }
}
