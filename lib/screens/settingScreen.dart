import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_imformation/component/darkMode.dart';
import 'package:school_imformation/component/openSouce.dart';
import 'package:school_imformation/component/setNotice.dart';
import 'package:school_imformation/provider/provider.dart';
import 'package:school_imformation/utility/constants.dart';

class SettingPage extends Page {
  static final pageName = "settingPage";

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
        settings: this, builder: (context) => SettingWidget());
  }
}

class SettingWidget extends StatefulWidget {
  @override
  _SettingWidgetState createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //header
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: <Widget>[
                    InkWell(
                      child: Icon(Icons.arrow_back),
                      onTap: () {
                        Provider.of<PageNotifier>(context, listen: false)
                            .goToMain();
                      },
                    ),
                    SizedBox(width: 20),
                    Text(
                      "설정",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "이름:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          "이상윤",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: <Widget>[
                        Text(
                          "학교:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Text("대구소프트웨어마이스터고등학교", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ],
                ),
              ),
              //body
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: FlatButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  shape: settingButtonShape(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "대구소프트웨어고등학교",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "3학년 3반",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Icon(Icons.autorenew),
                    ],
                  ),
                ),
              ),
              SetNotice(),
              SizedBox(height: 15),
              DarkMode(),
              SizedBox(height: 15),
              OpenSource(),
            ],
          ),
        ),
      ),
    );
  }
}
