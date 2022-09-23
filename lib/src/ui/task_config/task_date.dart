import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../data/task_config_controller.dart';

class TaskDate extends StatefulWidget {
  final TimeOfDay timeOfDay;
  final DateTime dateTime;

  const TaskDate({Key? key, required this.dateTime, required this.timeOfDay})
      : super(key: key);

  @override
  State<TaskDate> createState() => _TaskDateState();
}

class _TaskDateState extends State<TaskDate> {
  DateTime? _dateTime;
  TimeOfDay? _timeOfDay;
  void setTime(
      BuildContext context, DateTime? pickedDate, TimeOfDay? pickedTime) async {
    pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    _dateTime = pickedDate;
    pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    _timeOfDay = pickedTime;
    // ignore: use_build_context_synchronously
    context.read<TaskConfigManager>().setDateTime(pickedDate, pickedTime);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Due Time",
            style: TextStyle(
              color: HexColor("#B6B6B6"),
              fontStyle: FontStyle.normal,
              fontSize: 15.sp,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 35.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _dateTime == null && _timeOfDay == null
                          ? "${DateFormat('dd MMMM yyyy').format(widget.dateTime)},${widget.timeOfDay.format(context)}"
                          : "${DateFormat('dd MMMM yyyy').format(_dateTime!)},${_timeOfDay!.format(context)}",
                      style: TextStyle(
                        color: HexColor("#191919"),
                        fontStyle: FontStyle.normal,
                        fontSize: 16.sp,
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        final pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2100),
                        );
                        final pickedTime = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        );
                        // ignore: use_build_context_synchronously
                        context.read<TaskConfigManager>().setDateTime(
                            pickedDate ?? DateTime.now(),
                            pickedTime ?? TimeOfDay.now());
                        setState(() {
                          _timeOfDay = pickedTime;
                          _dateTime = pickedDate;
                        });
                      },
                      icon: Image(
                        image: const AssetImage(
                          'asset/task/calendar.png',
                        ),
                        height: 19.31.h,
                        width: 18.w,
                        color: HexColor("#191919"),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Color.fromARGB(255, 208, 206, 206),
                height: 20.h,
                thickness: 1.8,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
