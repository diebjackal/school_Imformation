import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

const _url = 'https://hcs.eduro.go.kr/#/loginHome';

class SelfDiagnosis extends StatefulWidget {
  @override
  _SelfDiagnosisState createState() => _SelfDiagnosisState();
}

class _SelfDiagnosisState extends State<SelfDiagnosis> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.white,
      onPressed: _launchURL,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(color: Colors.black),
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15),
            child: FaIcon(
              FontAwesomeIcons.clipboardList,
              size: 30,
            ),
          ),
          Text("자가진단 하러가기"),
        ],
      ),
    );
  }
}

void _launchURL() async {
  await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
}
