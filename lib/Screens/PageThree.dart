
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
            color:Colors.black26
        ),
        title: Text('Course Page', style: TextStyle(
            fontSize: 30,
            color:Colors.grey
        ),),
      ),
      body: Center(
        child: Text(
          "Course price is USD "+Get.arguments['price']??'0',
          style: TextStyle(fontSize: 30, color:Colors.grey.shade600),
        ),
      ),
    );
  }
}