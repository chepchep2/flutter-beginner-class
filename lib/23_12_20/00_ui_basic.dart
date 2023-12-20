import 'package:flutter/material.dart';

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
      home: const StarWidget(),
    );
  }
}

class StarWidget extends StatefulWidget {
  const StarWidget({super.key});

  @override
  State<StarWidget> createState() => _CampingWidgetState();
}

class _CampingWidgetState extends State<StarWidget> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5KFnDy0YooMSS9zCneMmiFPDuvUDyTzAmGA&usqp=CAU',
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
      ),
    );
  }

  Widget secondArea() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Title',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'sub title',
                style: TextStyle(
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
}

Widget forthArea() {
  return const Padding(
    padding: EdgeInsets.all(32.0),
    child: Text(
        '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
      Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
  '''),
  );
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
