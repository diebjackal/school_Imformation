import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_imformation/screens/mealTimeTable.dart';
import 'package:school_imformation/screens/selfDiagnosisScreen.dart';
import 'package:school_imformation/screens/timeTableScreen.dart';
import 'package:school_imformation/service/service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> subject;
  bool isLoading = false;

  void getData() async {
    try {
      var data = await SchoolData().getSchoolData();
      setState(() {
        subject = data;
        isLoading = true;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: ListView(
            children: [
              SelfDiagnosis(),
              TimeTable(isLoading: isLoading, subject: subject),
              MealTimeTable(),
            ],
          ),
        ),
      ),
    );
  }
}
