import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:school_imformation/utility/constants.dart';

class DarkMode extends StatelessWidget {
  const DarkMode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        print("다크 모드");
      },
      padding: const EdgeInsets.all(15),
      shape: settingButtonShape(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              FaIcon(FontAwesomeIcons.moon),
              SizedBox(width: 10),
              Text("다크 모드", style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          Icon(Icons.autorenew),
        ],
      ),
    );
  }
}
