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
    Star(
      id: 3,
      title: '무키베츠',
      subTitle: '무키 베츠 최고',
      imageUrl:
          'https://ca-times.brightspotcdn.com/dims4/default/fc4612f/2147483647/strip/true/crop/5470x3647+0+0/resize/1200x800!/quality/75/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F7a%2Fa3%2Fe255ae6048e3a7bc8ed4ed40a91d%2Fap23182025756184.jpg',
      description: '어쩌고 저쩌고',
    ),
    Star(
      id: 4,
      title: '무키베츠',
      subTitle: '무키 베츠 최고',
      imageUrl:
          'https://www.si.com/.image/t_share/MTg5NzMxNjM2MDI2Mjg3MzMw/mookie-betts-dodgers-2022-1.jpg',
      description: '어쩌고 저쩌고',
    ),
    Star(
      id: 5,
      title: '무키베츠',
      subTitle: '무키 베츠 최고',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5rof7BotNfw32UOhGv0aF5aEt5C0w8fk-yw&usqp=CAU',
      description: '어쩌고 저쩌고',
    ),
  ];

  List<Star> getStars() {
    return stars;
  }
}
