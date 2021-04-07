import 'package:flutter/material.dart';
import 'package:school_imformation/utility/constants.dart';

class MealTimeTable extends StatefulWidget {
  @override
  _MealTimeTableState createState() => _MealTimeTableState();
}

class _MealTimeTableState extends State<MealTimeTable> {
  List<String> mealTime = ["아침", "점심", "저녁"];
  List<String> meal = [
    "알감자버터구이",
    "북성로불고기",
    "배추김치",
    "현미밥",
    "머스캣코코주스",
    "쑥갓오징어무국"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Text(
            "오늘의 급식표",
            style: todayTimeTableTextStyle,
          ),
        ),
        Container(
          height: 240,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.all(10),
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${mealTime[index]}"),
                    for (int index = 0; index < meal.length; index++)
                      Text('${meal[index]}'),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
