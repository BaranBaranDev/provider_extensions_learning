import 'package:flutter/cupertino.dart';

class IsVisible extends ChangeNotifier {
  bool isCheck = true;
  void change() {
    isCheck = !isCheck;
    notifyListeners();
  }
}
