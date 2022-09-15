import 'package:flutter/material.dart';

enum Level { important, basic, urgent }

class Task {
  String name;
  Color color;
  DateTime? date;
  TimeOfDay time;
  bool isFinish;
  String? place;
  Level level;
  Task(
      {required this.name,
      this.color = Colors.white60,
      DateTime? date,
      TimeOfDay? time,
      this.place,
      this.level = Level.basic,
      this.isFinish = false})
      : date = date ?? DateTime.now(),
        time = time ?? TimeOfDay.now();
}