// ignore_for_file: override_on_non_overriding_member, file_names, non_constant_identifier_names, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:lumia/app_const/color_consts.dart';
// ignore: duplicate_import
import 'package:lumia/app_const/color_consts.dart';
import 'package:velocity_x/velocity_x.dart';

class ProtocolSelect extends StatefulWidget {
  const ProtocolSelect({super.key});

  @override
  State<ProtocolSelect> createState() => _ProtocolSelectState();
}

class _ProtocolSelectState extends State<ProtocolSelect> {
  @override
  bool _isContainerVisible = false;
  bool isbutton1 = false;
  bool isbutton2 = false;

  void _toggleContainerVisibility() {
    setState(() {
      _isContainerVisible = !_isContainerVisible;
    });
  }

  void handleButtonToggle(int buttonIndex) {
    if (buttonIndex == 1) {
      setState(() {
        isbutton1 = !isbutton1;
        isbutton2 = false;
      });
    } else if (buttonIndex == 2) {
      setState(() {
        isbutton2 = !isbutton2;
        isbutton1 = false;
      });
    }
  }

  Widget buildButton(int buttonIndex) {
    String label = buttonIndex == 1 ? "Host" : "Default";
    Color buttonColor = Colors.black;
    Color textColor = buttonIndex == 1
        ? (isbutton1 ? Colors.green : Colors.white)
        : (isbutton2 ? Colors.green : Colors.white);
    Color topBorderColor = buttonIndex == 1
        ? (isbutton1 ? Colors.green : Colors.black)
        : (isbutton2 ? Colors.green : Colors.black);

    return GestureDetector(
      onTap: () {
        handleButtonToggle(buttonIndex);
      },
      child: Container(
        width: 60,
        height: context.screenHeight*.037,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            Container(
              width: 40,
              height: 3,
              color: topBorderColor,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: Text(
                  label,
                  style: TextStyle(
                    color: textColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final List<Map<String, String>> voltageData = [
    {
      "title": "Total overCHG Warning",
      "value": "57.6 V",
    },
    {
      "title": "Total overCHG Warning",
      "value": "57.6 V",
    },
    {
      "title": "Total overCHG Warning",
      "value": "57.6 V",
    },
    {
      "title": "Total overCHG Warning",
      "value": "57.6 V",
    },
  ];

  final List<Map<String, String>> VoltData2 = [
    {
      "title": "Total overCHG Warning",
      "value": "57.6 V",
    },
    {
      "title": "Total overCHG Warning",
      "value": "57.6 V",
    },
    {
      "title": "Total overCHG Warning",
      "value": "57.6 V",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(42, 42, 42, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                height: _isContainerVisible
                    ? context.screenHeight * .75
                    : 100, // Adjust the height as needed
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "System Parameter\nSettings",
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
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        if (_isContainerVisible)
                          SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: context.screenWidth * .9,
                                    child: Text('Capacity',
                                        style: TextStyle(
                                          color: Color(0xFFFFBD59),
                                        )),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: voltageData
                                          .map(
                                            (data) => Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Container(
                                                      padding: EdgeInsets.all(10),
                                                      margin: EdgeInsets.only(
                                                          right: 10),
                                                      decoration: BoxDecoration(
                                                        color: primaryColor2,
                                                        border: Border.all(
                                                          color: Colors.grey,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                5.0),
                                                      ),
                                                      child: Center(
                                                        child: Column(
                                                          children: [
                                                            Text(
                                                              data["title"]!,
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.grey,
                                                                fontSize: 10,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Row(
                                                              children: [
                                                                data["value"]!
                                                                    .text
                                                                    .color(
                                                                        primaryColor)
                                                                    .make(),
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          left:
                                                                              8.0),
                                                                  child: Image.asset(
                                                                      'assets/icons/dd.png'),
                                                                )
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  ),
                                  20.heightBox,
                                  SizedBox(
                                    width: context.screenWidth * .9,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        "Setup Parallel Host"
                                            .text
                                            .bold
                                            .color(Color(0xFFFFBD59))
                                            .make(),
                                        Row(
                                          children: [
                                            SizedBox(

                                              width:70,
                                                child: buildButton(1)),
                                            5.widthBox,
                                            SizedBox(

                                                width:70,
                                                child: buildButton(2)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  10.heightBox,
                                  SizedBox(
                                    width: context.screenWidth * .9,
                                    child: Text('Max Requested Current',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFFFBD59),
                                        )),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                          height: context.screenHeight * .03,
                                          width: context.screenWidth * .4,
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                            
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  borderSide: BorderSide(
                                                      color: Colors
                                                          .white), // Border color when the field is enabled
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(
                                                    10), // Border radius when focused (you can change this)
                                                  borderSide: BorderSide(
                                                      color:
                                                          primaryColor), // Border color when the field is focused
                                                ),
                                                 hintStyle: TextStyle(color:Colors.white),
                                                hintText: "1231231",
                                                  contentPadding: EdgeInsets.only(top: 10.0,left: 10),)
                                                ,
                                            style: TextStyle(color: Colors.white),
                                                cursorColor: primaryColor,
                                          )),
SizedBox(width: context.screenWidth*.01,),
                                          Container(
                                             child: Row(
                                              children: [
                                                    GestureDetector(
                                onTap: (){},
                                 child: Container(
                                  height: context.screenHeight*.03,
                                  width: context.screenWidth*.2,
                                 
                                  
                                 decoration:BoxDecoration(
                                    color: primaryColor,
                                                
                                             borderRadius: BorderRadius.circular(10), // Border radius
                                           ),
                                           child: Center(
                                             child: "Read".text.bold.color(Colors.white).make()
                                           ),
                                 ),
                               ),
                                    SizedBox(width: context.screenWidth*.01,),             GestureDetector(
                                onTap: (){},
                                 child: Container(
                                  height: context.screenHeight*.03,
                                 width: context.screenWidth*.2,
                                 padding: EdgeInsets.all(2),
                                  
                                 decoration:BoxDecoration(
                                    color:Color(0xFF2A2A2A) ,
                                               border: Border.all(
                  color:primaryColor, // Border color
                  width: 2, // Border width
                ),
                                             borderRadius: BorderRadius.circular(10), // Border radius
                                           ),
                                           child: Center(
                                             child: 
                                             "Synchronize".text.bold.color(primaryColor).make()
                                           ),
                                 ),
                               )
                                              
                                              
                                               
                                              ],
                                             ),
                                          )
                                           
                                    ],
                                  ),
                                  20.heightBox,
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: VoltData2.map(
                                        (data) => Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.all(10),
                                                  margin:
                                                      EdgeInsets.only(right: 10),
                                                  decoration: BoxDecoration(
                                                    color: primaryColor2,
                                                    border: Border.all(
                                                      color: Colors.grey,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  child: Center(
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          data["title"]!,
                                                          style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 10,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Row(
                                                          children: [
                                                            data["value"]!
                                                                .text
                                                                .color(
                                                                    primaryColor)
                                                                .make(),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      left: 8.0),
                                                              child: Image.asset(
                                                                  'assets/icons/dd.png'),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ).toList(),
                                    ),
                                  ),
                                  10.heightBox,
                                  SizedBox(
                                    width: context.screenWidth * .9,
                                    child: Text('BMS Information',
                                        style: TextStyle(
                                          color: Color(0xFFFFBD59),
                                        )),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: VoltData2.map(
                                        (data) => Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.all(10),
                                                  margin:
                                                      EdgeInsets.only(right: 10),
                                                  decoration: BoxDecoration(
                                                    color: primaryColor2,
                                                    border: Border.all(
                                                      color: Colors.grey,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  child: Center(
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          data["title"]!,
                                                          style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 10,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Row(
                                                          children: [
                                                            data["value"]!
                                                                .text
                                                                .color(
                                                                    primaryColor)
                                                                .make(),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      left: 8.0),
                                                              child: Image.asset(
                                                                  'assets/icons/dd.png'),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ).toList(),
                                    ),
                                  ),
                                  10.heightBox,
                                  SizedBox(
                                    width: context.screenWidth * .9,
                                    child: Text('Pack Information',
                                        style: TextStyle(
                                          color: Color(0xFFFFBD59),
                                        )),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: VoltData2.map(
                                        (data) => Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.all(10),
                                                  margin:
                                                      EdgeInsets.only(right: 10),
                                                  decoration: BoxDecoration(
                                                    color: primaryColor2,
                                                    border: Border.all(
                                                      color: Colors.grey,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  child: Center(
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          data["title"]!,
                                                          style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 10,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Row(
                                                          children: [
                                                            data["value"]!
                                                                .text
                                                                .color(
                                                                    primaryColor)
                                                                .make(),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      left: 8.0),
                                                              child: Image.asset(
                                                                  'assets/icons/dd.png'),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ).toList(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        Container()
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
