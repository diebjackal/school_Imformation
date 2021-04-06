import 'package:flutter/material.dart';
import 'package:schoo_imformation/pages/input_imformation.dart';
import 'package:schoo_imformation/pages/main_page.dart';
import 'package:schoo_imformation/pages/setting_page.dart';
import 'package:schoo_imformation/provider/page_notifier.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => PageNotifier())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Consumer<PageNotifier>(
          builder: (context, pageNotifier, child) {
            return Navigator(
              onPopPage: (route, result) {
                if (!route.didPop(result)) {
                  return false;
                }
                return true;
              },
              pages: [
                MaterialPage(
                  key: ValueKey(InputImformation.pageName),
                  child: InputImformation(),
                ),
                if (pageNotifier.currentPage == MainPage.pageName) MainPage(),
                if (pageNotifier.currentPage == SettingPage.pageName)
                  SettingPage(),
              ],
            );
          },
        ),
      ),
    );
  }
}
// child: InputImformation()
