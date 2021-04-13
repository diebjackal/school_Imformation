import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:school_imformation/utility/constants.dart';

class SetNotice extends StatelessWidget {
  const SetNotice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        showModalBottomSheet(context: context, builder: buildBottomSheet);
      },
      padding: const EdgeInsets.all(15),
      shape: settingButtonShape(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              FaIcon(FontAwesomeIcons.bell),
              SizedBox(width: 10),
              Text("알람 설정", style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          Icon(Icons.autorenew),
        ],
      ),
    );
  }

  Widget buildBottomSheet(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: <Widget>[
            Text("급식 알림"),
            Text("자가진단 알림"),
            Text("시간표 알림"),
          ],
        ),
      ),
    );
  }
}
