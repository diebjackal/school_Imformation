import 'dart:convert';

import 'package:date_format/date_format.dart';
import 'package:http/http.dart' as http;

const List<String> currenciesList = ["월", "화", "수", "목", "금"];
List<String> subject = [];
List? maxPeriod = [];
String? day = "";

String schoolImformationURL =
    "https://schoolinfoapi.herokuapp.com/schoolapi/timetable";
String _days = formatDate(DateTime.now(), [yyyy, mm, dd]);

bool isSunday = false;

class SchoolTimeTableData {
  Future getSchoolTimeTableData() async {
    var requestURL = Uri.parse(
        "$schoolImformationURL?school_name=대구소프트웨어마이스터고등학교&class_name=3&grade=3&today=$_days");

    http.Response response = await http.get(requestURL);
    if (response.statusCode == 200) {
      print("timeTable data success");
      final decodedData = jsonDecode(utf8.decode(response.bodyBytes));
      day = decodedData["result"]["today"]["day"];
      maxPeriod = decodedData["result"]["timetable"]; // 몇 교시 까지 있는지 체크
      for (int i = 0; i < maxPeriod!.length; i++) {
        subject.add(decodedData["result"]["timetable"][i]["subject"]);
      }
    } else {
      print("server statusCode ${response.statusCode}");
      isSunday = true;
    }
    return subject;
  }
}
