import 'package:flutter/foundation.dart';

class FavoriteProvider extends ChangeNotifier {
  Set mySet = {};
  List liker = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  void addToSet(v) {
    print(mySet.iterator);
    mySet.add(v);
    notifyListeners();
  }

  void removeFromSet(int index) {
    mySet.remove(mySet.elementAt(index));
    notifyListeners();
  }

  void changeLikerItem(int index) {
    liker[index] = !liker[index];
    notifyListeners();
  }
}
