import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:school_imformation/utility/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class SelfDiagnosis extends StatefulWidget {
  @override
  _SelfDiagnosisState createState() => _SelfDiagnosisState();
}

class _SelfDiagnosisState extends State<SelfDiagnosis> {
  static const String _selfDiagnosis = "https://hcs.eduro.go.kr/#/relogin";

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: selfDiagnosisButtonShape(),
      onPressed: () => launch(_selfDiagnosis),
      child: Row(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(10),
              child: FaIcon(FontAwesomeIcons.clipboardList, size: 25)),
          Text("자가진단 하러 가기", style: selfDiagnosisTextStyle),
        ],
      ),
    );
  }
}
