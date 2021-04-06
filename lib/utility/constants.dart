import 'package:flutter/material.dart';

//text Style
const todayTimeTableTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20,
);

const selfDiagnosisTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20,
);

//Decoration
Decoration timeTableViewContainerDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: Colors.black,
      width: 2.5,
    ),
    borderRadius: BorderRadius.circular(10),
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
