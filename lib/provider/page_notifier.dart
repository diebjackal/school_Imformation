import 'package:flutter/cupertino.dart';
import 'package:schoo_imformation/pages/input_imformation.dart';

class PageNotifier extends ChangeNotifier {
  String _currentPage = InputImformation.pageName;
  String get currentPage => _currentPage;

  String schoolName = "";

  void getSchoolName(String schoolName) {
    this.schoolName = schoolName;
    notifyListeners();
  }

  void goToInputPage() {
    _currentPage = InputImformation.pageName;
    notifyListeners();
  }

  void goToMainPage(String pageName) {
    _currentPage = pageName;
    notifyListeners();
  }

  void goToSettingPage(String pageName) {
    _currentPage = pageName;
    notifyListeners();
  }
}
