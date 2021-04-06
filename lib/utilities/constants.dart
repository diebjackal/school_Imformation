import 'package:flutter/material.dart';

const OutlineInputBorder border = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(8.0),
  ),
);

const TextFieldDecoration = InputDecoration(
  hintText: "학교를 검색하세요",
  prefixIcon: Icon(
    Icons.search,
    color: Colors.black,
    size: 32,
  ),
  border: border,
  enabledBorder: border,
  focusedBorder: border,
);

//Text
const KTitleTextStyle = TextStyle(fontSize: 27, fontWeight: FontWeight.bold);

const KSubTitleTextStyle = TextStyle(color: Colors.black87);
