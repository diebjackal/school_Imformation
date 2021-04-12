import 'package:flutter/material.dart';
import 'package:school_imformation/component/viewMeal.dart';
import 'package:school_imformation/utility/constants.dart';

class MealTimeTable extends StatefulWidget {
  @override
  _MealTimeTableState createState() => _MealTimeTableState();
}

List<String> breakfast = [
  "알감자버터구이",
  "북성로불고기",
  "배추김치",
  "현미밥",
  "머스캣코코주스",
  "쑥갓오123징어무국",
];
List<String> lunch = [
  "알감자버터구이",
  "북성로불고기",
  "배추김치",
  "현미밥",
  "머스캣코코주스",
  "머스캣코코주스",
  "쑥갓오징어무국"
];
List<String> dinner = [
  "알감자버터구이",
  "프로틴",
];

class _MealTimeTableState extends State<MealTimeTable> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Text(
            "오늘의 급식표",
            style: HeadTitleTextStyle,
          ),
        ),
        Container(
          height: 240,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ViewMeal(index: 0, meal: breakfast),
              ViewMeal(index: 1, meal: lunch),
              ViewMeal(index: 2, meal: dinner),
            ],
          ),
        ),
      ],
    );
  }
}
