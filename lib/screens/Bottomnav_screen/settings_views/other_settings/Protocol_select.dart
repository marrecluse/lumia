// ignore_for_file: override_on_non_overriding_member, file_names, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:lumia/app_const/color_consts.dart';
import 'package:velocity_x/velocity_x.dart';

class SystemParameters extends StatefulWidget {
  const SystemParameters({super.key});

  @override
  State<SystemParameters> createState() => _SystemParametersState();
}

class _SystemParametersState extends State<SystemParameters> {
  @override
  bool _isContainerVisible = false;

  void _toggleContainerVisibility() {
    setState(() {
      _isContainerVisible = !_isContainerVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(42, 42, 42, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.infinity,
              height: _isContainerVisible ? 170 : 100,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Protocol\nCurrent",
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          GestureDetector(
                            onTap: _toggleContainerVisibility,
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Icon(
                                _isContainerVisible
                                    ? Icons.arrow_drop_up_rounded
                                    : Icons.arrow_drop_down_rounded,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 1,
                      ),
                      SizedBox(height: 5),
                      if (_isContainerVisible)
                        Container(
                          
                          width: context.screenWidth * 0.9,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: "CAN"
                                            .text
                                            .bold
                                            .color(Color(0xFFFFBD59))
                                            .make(),
                                      ),
                                      SizedBox(height: 20,),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: "RS485"
                                            .text
                                            .bold
                                            .color(Color(0xFFFFBD59))
                                            .make(),
                                      ),
                                    ],
                                  ),
                                ),
                                10.heightBox,
                                 Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: "Pylon"
                                            .text
                                          
                                            .color(Colors.white)
                                            .make(),
                                      ),
                                      SizedBox(height: 20,),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: "Deya"
                                            .text
                                           
                                            .color(Colors.white)
                                            .make(),
                                      ),
                                    ],
                                  ),
                                ),
                                10.heightBox,
                                 Container(
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.arrow_drop_down_rounded,
                                color: Colors.orange,
                              ),
                            10.heightBox,
                                      //SizedBox(height: 10,),
                                      Icon(  Icons.arrow_drop_down_rounded,
                                color: Colors.orange,
                              ),
                            
                                    ],
                                  ),
                                ),
  10.heightBox,

                                 Container(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
     Align(
  alignment: Alignment.topRight,
  child: Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
    decoration: BoxDecoration(
      color: Colors.orange,
      borderRadius: BorderRadius.circular(10), // Add border radius
    ),
    child: "Read".text.bold.color(Colors.black).make(),
  ),
),
SizedBox(height: 15),
Align(
  alignment: Alignment.topRight,
  child: Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
    decoration: BoxDecoration(
      color: Colors.black,
      border: Border.all(
        color: primaryColor,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(10), // Add border radius
    ),
    child: "Write".text.bold.color(primaryColor).make(),
  ),
)
    ],
  ),
),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
