import 'dart:convert';

import 'package:http/http.dart' as http;

int date = 20210315;
List<String> day = ['월', '화', '수', '목', '금'];

Map<String, List<String>> subject = {};

class SchoolData {
  Future getSchoolData() async {
    for (String days in day) {
      var requestURL = Uri.parse(
          'https://schoolinfoapi.herokuapp.com/schoolapi/timetable?school_name=대구소프트웨어마이스터고등학교&class_name=3&grade=3&today=$date');
      print(date);
      http.Response response = await http.get(requestURL);
      if (response.statusCode == 200) {
        final decodedData = jsonDecode(utf8.decode(response.bodyBytes));
        if (date < 20210319) {
          for (int i = 0; i < 7; i++) {
            dynamic test = decodedData['result']['timetable'][i]['subject'];
            if (subject[days] == null) subject[days] = [];
            subject[days].add(test);
          }
        } else {
          for (int i = 0; i < 6; i++) {
            dynamic test = decodedData['result']['timetable'][i]['subject'];
            if (subject[days] == null) subject[days] = [];
            subject[days].add(test);
          }
        }

        date++;
      } else {
        print(response.statusCode);
      }
    }
    return {subject == null ? subject : "하교"};
  }
}
