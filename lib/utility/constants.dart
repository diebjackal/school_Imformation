import 'package:flutter/material.dart';

//text Style
const HeadTitleTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20,
);

const dayTableTitleTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
);

const todayTimeTableTextStyle = TextStyle(
  fontSize: 15,
  color: Colors.white,
);
const sundayTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 45,
  color: Colors.white,
);

const mealTimeTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 18,
);

//Decoration
Decoration timeTableViewContainerDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: Color(0xff7b563d),
      width: 3.5,
    ),
    borderRadius: BorderRadius.circular(10),
    color: Color(0xff416036),
  );
}

Decoration viewMealContainerDecoration() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(15),
    border: Border.all(color: Colors.black, width: 2),
  );
}

Decoration settingContainerDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: Colors.black,
      width: 2,
    ),
    borderRadius: BorderRadius.circular(10),
  );
}

RoundedRectangleBorder settingButtonShape() {
  return RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
    side: BorderSide(
      width: 2,
      color: Colors.black,
    ),
  );
}

RoundedRectangleBorder selfDiagnosisButtonShape() {
  return RoundedRectangleBorder(
    side: BorderSide(
      color: Colors.black,
      width: 2,
      style: BorderStyle.solid,
    ),
    borderRadius: BorderRadius.circular(10),
  );
}
