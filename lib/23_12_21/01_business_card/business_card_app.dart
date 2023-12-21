import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/00_repository/star_repository.dart';
import 'package:flutter_beginner_class/23_12_20/model/star.dart';
import 'package:flutter_beginner_class/23_12_21/01_business_card/business_card.dart';
import 'package:flutter_beginner_class/23_12_21/01_business_card/star_detail_screen.dart';

class BusinessCardApp extends StatelessWidget {
  final repository = StarRepository();

  BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    final stars = repository.getStars();
    final betts = stars[0];

    return Scaffold(
      appBar: AppBar(
        title: const Text('명함ㅋ'),
      ),
      body: BusinessCard(
        star: betts,
        onPhotoPressed: (Star star) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StarDetailScrenn(star: star),
            ),
          );
        },
        onNamePressed: (String name) => print(name),
      ),
    );
  }
}
