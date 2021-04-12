import 'package:flutter/cupertino.dart';
import 'package:school_imformation/screens/myHomePage.dart';

class PageNotifier extends ChangeNotifier {
  String _currentPage = MyHomePage.pageName;
  String get currentPage => _currentPage;

  void goToMain() {
    _currentPage = MyHomePage.pageName;
    notifyListeners();
  }

  void goToSettingPage(String name) {
    _currentPage = name;
    notifyListeners();
  }
}
