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
      this.color = const Color.fromARGB(255, 226, 226, 226),
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

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      name: json['name'] as String,
      color: Color(int.parse(
        json['color'],
      )),
      date: DateTime.parse(json['date']),
      time: (String time) {
        time = time.split("(")[1].split(")")[0];
        return TimeOfDay(
            hour: int.parse(time.split(":")[0]),
            minute: int.parse(time.split(":")[1]));
      }(json['time']),
      isFinish: json['isFinish'] as bool,
      place: json['place'] as String,
      level: Level.basic,
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'color': color.value.toString(),
      'date': date.toString(),
      'time': time.toString(),
      'isFinish': isFinish,
      'place': place,
      'level': level.toString(),
    };
  }
}
