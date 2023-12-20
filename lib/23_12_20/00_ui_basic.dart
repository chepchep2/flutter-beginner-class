import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_20/model/star.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: StarWidget(
        star: Star(
          title: '무키베츠',
          subTitle: '무키 베츠 최고',
          imageUrl:
              'https://wallpapers.com/images/hd/mookie-betts-long-torch-y25uqlhjeuui0h9f.jpg',
          description: '어쩌고 저쩌고',
        ),
      ),
    );
  }
}

class StarWidget extends StatefulWidget {
  final Star star;

  const StarWidget({
    super.key,
    required this.star,
  });

  @override
  State<StarWidget> createState() => _CampingWidgetState();
}

class _CampingWidgetState extends State<StarWidget> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                widget.star.imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            secondArea(),
            thirdArea(),
            forthArea(),
          ],
        ),
      ),
    );
  }

  Widget secondArea() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.star.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                widget.star.subTitle,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            child: Row(
              children: [
                Icon(
                  isFavorite ? Icons.star : Icons.star_border,
                  color: Colors.red,
                ),
                const Text('41'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget thirdArea() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButtonWidget(
          title: 'CALL',
          icon: Icon(
            Icons.phone,
            color: Colors.blueAccent,
          ),
        ),
        IconButtonWidget(
          title: 'ROUTE',
          icon: Icon(
            Icons.near_me,
            color: Colors.blueAccent,
          ),
        ),
        IconButtonWidget(
          title: 'SHARE',
          icon: Icon(
            Icons.share,
            color: Colors.blueAccent,
          ),
        ),
      ],
    );
  }

  Widget forthArea() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        widget.star.description,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
    );
  }
}

class IconButtonWidget extends StatelessWidget {
  final String title;
  final Icon icon;

  const IconButtonWidget({
    required this.title,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        Text(
          title,
          style: const TextStyle(
            color: Colors.blueAccent,
          ),
        )
      ],
    );
  }
}
