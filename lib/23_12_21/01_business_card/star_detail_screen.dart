import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_20/model/star.dart';

class StarDetailScrenn extends StatelessWidget {
  final Star star;

  const StarDetailScrenn({
    super.key,
    required this.star,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: star.subTitle,
            child: Image.network(star.imageUrl),
          ),
          Text(star.title),
          Text(star.description),
        ],
      ),
    );
  }
}
