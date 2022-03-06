import 'package:flutter/material.dart';
import 'package:provider_task_1/screens/home_page.dart';
import 'package:provider_task_1/screens/secondScreen.dart';

class FirstPAge extends StatelessWidget {
  FirstPAge({Key? key}) : super(key: key);
  final pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return PageView(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        children: [
          HomePage(),
          ChoosedThings(),
        ]);
  }
}
