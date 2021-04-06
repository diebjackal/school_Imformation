import 'package:flutter/material.dart';

class TimeTable extends StatelessWidget {
  const TimeTable({
    Key key,
    @required this.isLoading,
    @required this.subject,
  }) : super(key: key);

  final bool isLoading;
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
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 10),
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2.5,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "1교시 : ${isLoading ? subject[0] : "시간표를 가져오는 중..."}",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "2교시 : ${isLoading ? subject[1] : "시간표를 가져오는 중..."}",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "3교시 : ${isLoading ? subject[2] : "시간표를 가져오는 중..."}",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "4교시 : ${isLoading ? subject[3] : "시간표를 가져오는 중..."}",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "5교시 : ${isLoading ? subject[4] : "시간표를 가져오는 중..."}",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "6교시 : ${isLoading ? subject[5] : "시간표를 가져오는 중..."}",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "7교시 : ${isLoading ? subject[6] : "시간표를 가져오는 중..."}",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
