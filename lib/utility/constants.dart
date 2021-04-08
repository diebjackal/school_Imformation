import 'package:flutter/material.dart';

//text Style
const todayTimeTableTitleTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20,
);

const todayTimeTableTextStyle = TextStyle(
  fontSize: 15,
  color: Colors.white,
);

const selfDiagnosisTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20,
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
