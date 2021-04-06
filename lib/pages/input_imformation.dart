import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schoo_imformation/provider/page_notifier.dart';
import 'package:schoo_imformation/server/service.dart';
import 'package:schoo_imformation/utilities/constants.dart';

class InputImformation extends StatefulWidget {
  static final String pageName = "InputPage";
  @override
  _InputImformationState createState() => _InputImformationState();
}

class _InputImformationState extends State<InputImformation> {
  void getData() async {
    try {
      var data = await SchoolData().getSchoolData();
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  String gradeValueChoose;
  String classValueChoose;
  String numValueChoose;

  String schoolName;

  List listItem = ["Item1", "Item2", "Item3", "Item4", "Item5"];

  @override
  Widget build(BuildContext context) {
    final information = Provider.of<PageNotifier>(context, listen: false);
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Image.asset(
                    'assets/school.png',
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "학교 검색",
                    style: KTitleTextStyle,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  "진학 중인 학교 정보를 입력 해주세요.",
                  style: KSubTitleTextStyle,
                ),
              ),
              SizedBox(height: 24),
              TextField(
                cursorColor: Colors.black,
                decoration: TextFieldDecoration,
                onChanged: (value) {
                  schoolName = value;
                },
              ),
              SizedBox(height: 24),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButton(
                  hint: Text('학년'),
                  dropdownColor: Colors.white,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 36,
                  isExpanded: true,
                  underline: SizedBox(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                  value: gradeValueChoose,
                  onChanged: (newValue) {
                    setState(() {
                      gradeValueChoose = newValue;
                      print("학년 $gradeValueChoose");
                    });
                  },
                  items: listItem.map((valueItem) {
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 24),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButton(
                  hint: Text('반'),
                  dropdownColor: Colors.white,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 36,
                  isExpanded: true,
                  underline: SizedBox(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                  value: classValueChoose,
                  onChanged: (newValue) {
                    setState(() {
                      classValueChoose = newValue;
                      print("반 $classValueChoose");
                    });
                  },
                  items: listItem.map((valueItem) {
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 24),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButton(
                  hint: Text('번호'),
                  dropdownColor: Colors.white,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 36,
                  isExpanded: true,
                  underline: SizedBox(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                  value: numValueChoose,
                  onChanged: (newValue) {
                    setState(() {
                      numValueChoose = newValue;
                      print("번호 $numValueChoose");
                    });
                  },
                  items: listItem.map((valueItem) {
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 200),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 22, horizontal: 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.lightBlueAccent,
                  onPressed: () {
                    information.goToMainPage("MainPage");
                    information.getSchoolName(schoolName);
                    print(information.schoolName);
                  },
                  child: Text(
                    "확인",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
