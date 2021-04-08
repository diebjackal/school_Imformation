import 'package:flutter/material.dart';
import 'package:school_imformation/service/service.dart';
import 'package:school_imformation/utility/constants.dart';

class TimeTable extends StatelessWidget {
  const TimeTable({
    Key key,
    @required this.subject,
  }) : super(key: key);
  final List<String> subject;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Text(
            "오늘의 시간표",
            style: todayTimeTableTitleTextStyle,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 10),
          width: double.infinity,
          height: 200,
          decoration: timeTableViewContainerDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              for (int i = 0; i < maxPeriod.length; i++)
                Text(
                  "${i + 1}교시 : ${subject[i]}}",
                  style: todayTimeTableTextStyle,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
