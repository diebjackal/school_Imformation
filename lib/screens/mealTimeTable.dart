import 'package:flutter/material.dart';
import 'package:school_imformation/component/viewMeal.dart';
import 'package:school_imformation/service/mealDataServer.dart';
import 'package:school_imformation/utility/constants.dart';

class MealTimeTable extends StatefulWidget {
  @override
  _MealTimeTableState createState() => _MealTimeTableState();
}

class _MealTimeTableState extends State<MealTimeTable> {
  void getData() async {
    try {
      var mealData = await MealData().getMealData();
      setState(() {});
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

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
              ViewMeal(index: 0, meal: breakFast),
              ViewMeal(index: 1, meal: lunch),
              ViewMeal(index: 2, meal: dinner),
            ],
          ),
        ),
      ],
    );
  }
}
