import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getx',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: HomePage(),
    );
  }
}



