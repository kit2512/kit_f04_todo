import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../data/task_config_controller.dart';

class TaskDate extends StatelessWidget {
  final TimeOfDay timeOfDay;
  final DateTime dateTime;

  const TaskDate({Key? key, required this.dateTime, required this.timeOfDay})
      : super(key: key);

  void setTime(
      BuildContext context, DateTime? pickedDate, TimeOfDay? pickedTime) async {
    pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    // ignore: use_build_context_synchronously
    context.read<TaskConfigManager>().setDateTime(pickedDate, pickedTime);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Due Time",
            style: TextStyle(
              color: HexColor("#B6B6B6"),
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 35,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${DateFormat('dd MMMM yyyy').format(dateTime)},${timeOfDay.format(context)}",
                      style: TextStyle(
                        color: HexColor("#191919"),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        DateTime? pickedDate;
                        TimeOfDay? pickedTime;
                        setTime(context, pickedDate, pickedTime);

                        log(context
                            .read<TaskConfigManager>()
                            .task
                            .time
                            .toString());
                      },
                      icon: Image(
                        image: const AssetImage(
                          'asset/task/calendar.png',
                        ),
                        height: 19.31,
                        width: 18,
                        color: HexColor("#191919"),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 208, 206, 206),
                height: 20,
                thickness: 1.8,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
