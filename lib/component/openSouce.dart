import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:school_imformation/utility/constants.dart';

class OpenSource extends StatelessWidget {
  const OpenSource({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      padding: const EdgeInsets.all(15),
      shape: settingButtonShape(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              FaIcon(FontAwesomeIcons.search),
              SizedBox(width: 10),
              Text("오픈소스 라이선스", style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          Icon(Icons.remove_red_eye),
        ],
      ),
    );
  }
}
