
import 'package:flutter/material.dart';

class TaskTime extends StatefulWidget {
  final TimeOfDay time;
  final Function(TimeOfDay) onTimeChanged;
  const TaskTime({required this.time, required this.onTimeChanged,super.key});

  @override
  State<TaskTime> createState() => _TaskTimeState();
}

class _TaskTimeState extends State<TaskTime> {
  TimeOfDay? _timeOfDay;
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}