import 'package:flutter/foundation.dart';

class PopUpMenuButtonProvider extends ChangeNotifier {
  int son = 1;
  void onChanged(int value) {
    son = value;
  }
}
