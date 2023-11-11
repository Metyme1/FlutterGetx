
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'PageOne.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40),
                    ),
                    gradient: LinearGradient(
                      colors: [Colors.grey.shade900, Colors.grey.shade600, Colors.grey.shade900],
                    )
                ),

                child: Center(
                  child: Text(
                    "GetX",
                    style: TextStyle(
                        fontSize: 50,
                        color:Colors.white
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Center(
                  child : Container(
                      width: MediaQuery.of(context).size.width-20,
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'Search GetX..',
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white70,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50.0)),
                            borderSide: BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50.0)),
                            borderSide: BorderSide(color: Colors.grey.shade100),
                          ),
                        ),)
                  )),
              SizedBox(height: 50,),
              //GetX start from here
              RichText(
                  text: TextSpan(
                      text: 'First GetX',
                      recognizer: TapGestureRecognizer()
                        ..onTap = ()=> Get.to(()=>PageOne()),
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 30
                      ))
              ),
              SizedBox(height: 10,),
              //Explore GetX
              RichText(
                  text:TextSpan(
                      text: 'Explore GetX',
                      recognizer: TapGestureRecognizer()
                        ..onTap = ()=> null,
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 30
                      )
                  )
              ),
              SizedBox(height: 50,),
              Divider(),
              SizedBox(height: 30,),
              Text('Navigate named routes',
                style: TextStyle(
                    fontSize: 30
                ),
              ),
              SizedBox(height: 30,),
              //last two routes/bottons
              Expanded(child:Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                  ),
                  gradient:LinearGradient(
                      colors:[Colors.grey, Colors.black, Colors.grey]
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Expanded(child:Container(
                        width: 200,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
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
                            "Course",
                            style: TextStyle(
                                fontSize: 20,
                                color:Colors.grey.shade900
                            ),
                          ),
                        ),

                      ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
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
                                "More",
                                style: TextStyle(
                                    fontSize: 20,
                                    color:Colors.grey.shade900
                                ),
                              ),
                            ),

                          )
                      )
                    ],
                  ),
                ),
              )
              )
            ],
          ),
        ),
      );
  }
}
