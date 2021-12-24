import 'package:flutter/widgets.dart';

class PageChanger extends ChangeNotifier {
  int currentIndex = 0;
  onTap(int i) {
    currentIndex = i;
    notifyListeners();
  }
}
