import 'package:flutter/material.dart';
import 'package:school_imformation/utility/constants.dart';

List<String> _mealTime = ["아침", "점심", "저녁"];
List<String> _Kcal = ["1000", "1230", "900"];

class ViewMeal extends StatelessWidget {
  const ViewMeal({Key? key, required this.index, required this.meal})
      : super(key: key);

  final List<String> meal;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(10),
      width: 150,
      decoration: viewMealContainerDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "${_mealTime[index]}",
                style: mealTimeTextStyle,
              ),
              Text("${_Kcal[index]}Kcal"),
            ],
          ),
          Divider(color: Colors.black, thickness: 1.5),
          for (int index = 0; index < meal.length; index++)
            Text('${meal[index]}'),
        ],
      ),
    );
  }
}
