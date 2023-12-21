import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_20/model/star.dart';
import 'package:flutter_beginner_class/23_12_21/01_business_card/star_detail_screen.dart';

class BusinessCard extends StatelessWidget {
  final Star star;

  final void Function(Star star) onPhotoPressed;
  final void Function(String name) onNamePressed;

  const BusinessCard({
    super.key,
    required this.star,
    required this.onPhotoPressed,
    required this.onNamePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              onPhotoPressed(star);
            },
            child: Hero(
              tag: star.subTitle,
              child: Image.network(
                star.imageUrl,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              onNamePressed(star.title);
            },
            child: Text(
              star.title,
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
