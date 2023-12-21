import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/00_repository/star_repository.dart';
import 'package:flutter_beginner_class/23_12_20/model/star.dart';

class Body extends StatelessWidget {
  final repository = StarRepository();
  Body({super.key});

  @override
  Widget build(BuildContext context) {
    final stars = repository.getStars();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: stars
            .map((e) => UtubeWidget(
                  imageUrl: e.imageUrl,
                  title: e.title,
                  subTitle: e.subTitle,
                  description: e.description,
                ))
            .toList(),
      ),
    );
  }
}

class UtubeWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final String description;

  const UtubeWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          Image.network(
            imageUrl,
            width: 500,
            // height: 100,
            fit: BoxFit.cover,
          ),
          Row(
            children: [
              const Icon(Icons.face_2_outlined),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const Row(
                    children: [
                      Text(
                        'MLB - ',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        '조회수 10회 - ',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        '9시간 전',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
