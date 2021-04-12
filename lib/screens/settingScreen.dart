import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
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
              Row(
                children: [
                  Text(
                    "이름:",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Text("이상윤", style: TextStyle(fontSize: 20)),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    "학교:",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Text("대구소프트웨어마이스터고등학교", style: TextStyle(fontSize: 20)),
                ],
              ),
              //body
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: settingContainerDecoration(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("대구소프트웨어고등학교"),
                        SizedBox(height: 8),
                        Text("3학년 3반"),
                      ],
                    ),
                    Icon(Icons.autorenew),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: settingContainerDecoration(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        FaIcon(FontAwesomeIcons.bell),
                        SizedBox(width: 10),
                        Text("알람 설정",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Icon(Icons.autorenew),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: settingContainerDecoration(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        FaIcon(FontAwesomeIcons.moon),
                        SizedBox(width: 10),
                        Text("다크 모드",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Icon(Icons.autorenew),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: settingContainerDecoration(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        FaIcon(FontAwesomeIcons.search),
                        SizedBox(width: 10),
                        Text("오픈소스 라이선스",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Icon(Icons.remove_red_eye),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
