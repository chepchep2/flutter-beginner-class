import 'package:flutter_beginner_class/23_12_20/model/star.dart';

class StarRepository {
  final List<Star> stars = [
    Star(
      id: 1,
      title: '무키베츠',
      subTitle: '무키 베츠 최고',
      imageUrl:
          'https://wallpapers.com/images/hd/mookie-betts-long-torch-y25uqlhjeuui0h9f.jpg',
      description: '어쩌고 저쩌고',
    ),
    Star(
      id: 2,
      title: '무키베츠',
      subTitle: '무키 베츠 최고',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDhLv2OQCSyb7rxD4WyP6ZbdADD4rtFuL-LQ&usqp=CAU',
      description: '어쩌고 저쩌고',
    ),
  ];

  List<Star> getStars() {
    return stars;
  }
}
