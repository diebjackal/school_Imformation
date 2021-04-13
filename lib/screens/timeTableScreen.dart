import 'package:flutter/material.dart';
import 'package:school_imformation/service/timeTableServer.dart';
import 'package:school_imformation/utility/constants.dart';

class TimeTable extends StatelessWidget {
  const TimeTable({
    Key? key,
    required this.subject,
  }) : super(key: key);
  final List<String>? subject;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Row(
            children: <Widget>[
              Text(
                "오늘의 시간표",
                style: HeadTitleTextStyle,
              ),
              SizedBox(width: 5),
              Text(
                "($day요일)",
                style: dayTableTitleTextStyle,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          decoration: timeTableViewContainerDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              for (int i = 0; i < maxPeriod!.length; i++)
                Text(
                  "${i + 1}교시 : ${subject![i]}",
                  style: todayTimeTableTextStyle,
                ),
              isSunday
                  ? Text(
                      "일요일에는\n수업이 없습니다.",
                      style: sundayTextStyle,
                    )
                  : Text(""),
            ],
          ),
        ),
      ],
    );
  }
}
