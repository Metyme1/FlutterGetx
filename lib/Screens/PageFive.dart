
import 'package:flutter/material.dart';

class PageFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child:Container(
            width: 200,
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFffbc33e)
            ),


            child: ElevatedButton(

              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: Colors.grey.shade300,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),),
              onPressed: () => null,
              child: Text(
                "Home",
                style: TextStyle(
                    fontSize: 20,
                    color:Colors.grey.shade900
                ),
              ),
            ),

          )

      ),
    );
  }
}