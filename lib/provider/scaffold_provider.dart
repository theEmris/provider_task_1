import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class ScaffoldProvider extends ChangeNotifier {
  Color mycolor = Colors.purple;

  void getColor(v) {
    mycolor = v;
  }
}
