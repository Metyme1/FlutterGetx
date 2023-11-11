import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Screens/PageThree.dart';
import 'Screens/HomePage.dart';
import 'Screens/PageFour.dart';

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
      getPages: [
        GetPage(name:'/course-page',page:()=>PageThree()),
        GetPage(name: '/more/:data',page:()=>PageFour())
      ],
    );
  }
}



