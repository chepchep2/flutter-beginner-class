import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/00_repository/star_repository.dart';

class Body extends StatefulWidget {
  final repository = StarRepository();

  Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          utube(),
        ],
      ),
    );
  }

  Widget utube() {
    return Column(
      children: [
        Container(
          child: Image.network(
              'https://wallpapers.com/images/hd/mookie-betts-long-torch-y25uqlhjeuui0h9f.jpg'),
        ),
        const Row(
          children: [
            Icon(Icons.face_2),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('제목 - ㅋㅋㅋ'),
                Text('침착맨'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
