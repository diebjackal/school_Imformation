import 'package:flutter/material.dart';

class SettingPage extends Page {
  static final pageName = "settingPage";
  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
        settings: this, builder: (context) => SettingScreen());
  }
}

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          "Setting page",
          style: TextStyle(fontSize: 100),
        ),
      ),
    );
  }
}
