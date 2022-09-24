import 'package:flutter/material.dart';

enum Level { important, basic, urgent }

class Task {
  String? name;
  Color color;
  DateTime? date;
  TimeOfDay time;
  bool isFinish;
  String place;
  Level level;
  Task(
      {this.name,
      this.color = Colors.white60,
      DateTime? date,
      TimeOfDay? time,
      this.place = "Viet Nam",
      this.level = Level.basic,
      this.isFinish = false})
      : date = date ?? DateTime.now(),
        time = time ?? TimeOfDay.now();

  Task copyWith({
    String? name,
    Color? color,
    DateTime? date,
    TimeOfDay? time,
    String? place,
    Level? level,
  }) {
    return Task(
      name: name ?? this.name,
      color: color ?? this.color,
      date: date ?? this.date,
      time: time ?? this.time,
      place: place ?? this.place,
      level: level ?? this.level,
    );
  }
}
