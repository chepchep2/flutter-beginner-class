// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class Todo extends HiveObject {
  String title;
  int dateTime;

  Todo({
    required this.title,
    required this.dateTime,
  });
}
