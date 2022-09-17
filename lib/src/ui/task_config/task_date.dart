import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

class TaskDate extends StatefulWidget {
   DateTime? date;
  // final Function(DateTime) onDateChanged;
   TimeOfDay? time;
  // final Function(TimeOfDay) onTimeChanged;
   TaskDate(
      {required this.date,
      required this.time,
      Key? key})
      : super(key: key);

  @override
  State<TaskDate> createState() => _TaskDateState();
}

class _TaskDateState extends State<TaskDate> {
  TimeOfDay? _timeOfDay;
  DateTime? _dateTime;
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
                      _dateTime == null
                          ? ""
                          : DateFormat('dd MMMM yyyy').format(_dateTime!) +
                              "," +
                              _timeOfDay!.format(context),
                      style: TextStyle(
                        color: HexColor("#191919"),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
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
                        setState(() {
                          _dateTime = pickedDate;
                          _timeOfDay = pickedTime;
                        });
                        widget.time = pickedTime;
                        widget.date = pickedDate;
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
