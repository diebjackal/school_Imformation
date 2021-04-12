import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:school_imformation/provider/provider.dart';
import 'package:school_imformation/screens/settingScreen.dart';
import 'package:school_imformation/utility/constants.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "대구소프트웨어고등학교",
            style: HeadTitleTextStyle,
          ),
          Row(
            children: <Widget>[
              InkWell(
                child: Icon(Icons.search, size: 30),
                onTap: () {
                  print("검색");
                  // Provider.of<PageNotifier>(context, listen: false)
                  //     .goToSettingPage(SettingPage.pageName);
                },
              ),
              InkWell(
                child: FaIcon(FontAwesomeIcons.cog, size: 25),
                onTap: () {
                  Provider.of<PageNotifier>(context, listen: false)
                      .goToSettingPage(SettingPage.pageName);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
