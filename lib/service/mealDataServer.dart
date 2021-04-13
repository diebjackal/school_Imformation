import 'dart:convert';

import 'package:http/http.dart' as http;

List<dynamic?> breakFast = [];
List<dynamic?> lunch = [];
List<dynamic?> dinner = [];

String breakFastCal = "";
String lunchCal = "";
String dinnerCal = "";

class MealData {
  Future getMealData() async {
    var requestURL = Uri.parse(
        "https://schoolinfoapi.herokuapp.com/schoolapi/meals?school_name=대구소프트웨어마이스터고등학교&today=20210413");

    http.Response response = await http.get(requestURL);
    if (response.statusCode == 200) {
      final decodedData = jsonDecode(utf8.decode(response.bodyBytes));
      //menu
      breakFast = decodedData['result'][0]['menu'];
      lunch = decodedData['result'][1]['menu'];
      dinner = decodedData['result'][2]['menu'];
      //cal
      breakFastCal = decodedData['result'][0]['cal'];
      lunchCal = decodedData['result'][1]['cal'];
      dinnerCal = decodedData['result'][2]['cal'];
      print(breakFastCal);
    } else {
      print(response.statusCode);
    }
  }
}
