import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schoo_imformation/component/schedule.dart';
import 'package:schoo_imformation/component/self_diagnosis.dart';
import 'package:schoo_imformation/provider/page_notifier.dart';

class MainPage extends Page {
  static final pageName = 'MainPage';

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
        settings: this, builder: (context) => MainScreen());
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final information = Provider.of<PageNotifier>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "${information.schoolName}",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          information.goToInputPage();
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.search, size: 25),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          information.goToSettingPage("settingPage");
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.settings, size: 25),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SelfDiagnosis(),
            Schedule(),
          ],
        ),
      ),
    );
  }
}
