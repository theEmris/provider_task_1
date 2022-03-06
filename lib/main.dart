import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_task_1/provider/favorite_provider.dart';
import 'package:provider_task_1/provider/popUpMenuButton_provider.dart';
import 'package:provider_task_1/provider/scaffold_provider.dart';
import 'package:provider_task_1/provider/slider_provider.dart';
import 'package:provider_task_1/screens/firstPage.dart';
import 'package:provider_task_1/screens/home_page.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context)=>SliderProvider()),
    ChangeNotifierProvider(create: (context)=> PopUpMenuButtonProvider()),
    ChangeNotifierProvider(create: (context)=> ScaffoldProvider()),
    ChangeNotifierProvider(create: (context)=> FavoriteProvider())

  ],
  child: MyApp(),));

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPAge()
    );
  }
}

