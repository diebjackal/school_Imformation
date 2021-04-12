import 'package:flutter/material.dart';
import 'package:school_imformation/component/Header.dart';
import 'package:school_imformation/screens/selfDiagnosisScreen.dart';
import 'package:school_imformation/screens/timeTableScreen.dart';
import 'package:school_imformation/service/service.dart';

import 'mealTimeTable.dart';

class MyHomePage extends StatefulWidget {
  static final String pageName = "MyHomePage";

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> subject = [];
  void getData() async {
    try {
      var timeTableData = await SchoolTimeTableData().getSchoolTimeTableData();
      setState(() {
        subject = timeTableData;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Header(),
                  SelfDiagnosis(),
                  TimeTable(subject: subject),
                  MealTimeTable(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
