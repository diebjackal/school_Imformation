import 'dart:convert';

import 'package:date_format/date_format.dart';
import 'package:http/http.dart' as http;

const List<String> currenciesList = ["월", "화", "수", "목", "금"];
List<String> subject = [];
String day = formatDate(DateTime.now(), [yyyy, mm, dd]);

class SchoolData {
  Future getSchoolData() async {
    var requestURL = Uri.parse(
        "https://schoolinfoapi.herokuapp.com/schoolapi/timetable?school_name=대구소프트웨어마이스터고등학교&class_name=3&grade=3&today=$day");

    http.Response response = await http.get(requestURL);
    if (response.statusCode == 200) {
      print("success");
      final decodedData = jsonDecode(utf8.decode(response.bodyBytes));

      for (int i = 0; i < 7; i++) {
        subject.add(decodedData["result"]["timetable"][i]["subject"]);
      }
    } else {
      print(response.statusCode);
    }
    return subject;
  }
}
