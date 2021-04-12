import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_imformation/provider/provider.dart';
import 'package:school_imformation/screens/myHomePage.dart';
import 'package:school_imformation/screens/settingScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => PageNotifier())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Consumer<PageNotifier>(
          builder: (context, PageNotifier, child) {
            return Navigator(
              onPopPage: (route, result) {
                if (!route.didPop(result)) {
                  return false;
                }
                return true;
              },
              pages: [
                MaterialPage(
                  key: ValueKey(MyHomePage.pageName),
                  child: MyHomePage(),
                ),
                if (PageNotifier.currentPage == SettingPage.pageName)
                  SettingPage(),
              ],
            );
          },
        ),
      ),
    );
  }
}
