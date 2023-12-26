import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<String> chipLabels = ['전체', '게임', '뉴스', '실시간', '믹스', '액션'];

  MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(120);

  List<Widget> createChip(List<String> labels) {
    return labels.asMap().entries.map((e) {
      final index = e.key;
      final label = e.value;

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Theme(
          data: ThemeData(
            chipTheme: ChipThemeData(
              backgroundColor: index == 0 ? Colors.white : Colors.black,
              selectedColor: Colors.white,
              labelStyle:
                  TextStyle(color: index == 0 ? Colors.black : Colors.white),
            ),
          ),
          child: ChoiceChip(
            label: Text(label),
            selected: false,
            onSelected: (bool selected) {},
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.smart_display,
          color: Colors.red,
        ),
        title: const Text('YouTube'),
        actions: const [
          Icon(Icons.cast_for_education),
          Icon(Icons.notifications),
          Icon(Icons.search),
          Icon(Icons.face_6),
          SizedBox(width: 20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const Chip(
                    labelPadding: EdgeInsets.all(0),
                    label: SizedBox.shrink(),
                    avatar: Icon(Icons.explore),
                  ),
                  ...createChip(chipLabels)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
