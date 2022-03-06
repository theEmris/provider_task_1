import 'package:flutter/foundation.dart';

class SliderProvider extends ChangeNotifier {
  double givenValue = 1;

  void onChangedValue(double value) {
    givenValue = value;
    notifyListeners();
  }
}
