// ignore_for_file: file_names, library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lumia/app_const/color_consts.dart';
import 'package:velocity_x/velocity_x.dart';

class SwitchControl extends StatefulWidget {
  const SwitchControl({Key? key}) : super(key: key);

  @override
  _SwitchControlState createState() => _SwitchControlState();
}

class _SwitchControlState extends State<SwitchControl> {
  bool _isContainerVisible = false;
  bool isbutton1 = false;
  bool isbutton2 = false;
  bool isbutton3 = false;
  bool isbutton4 = false;
  bool isbutton5 = false;
  bool isbutton6 = false;
  bool isbutton7 = false;
  bool isbutton8 = false;
  bool isbutton9 = false;
  bool isbutton10 = false;

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

  void handle2ButtonToggle(int buttonIndex) {
    if (buttonIndex == 3) {
      setState(() {
        isbutton3 = !isbutton3;
        isbutton4 = false;
      });
    } else if (buttonIndex == 4) {
      setState(() {
        isbutton4 = !isbutton4;
        isbutton3 = false;
      });
    }
  }

  void handle3ButtonToggle(int buttonIndex) {
    if (buttonIndex == 5) {
      setState(() {
        isbutton5 = !isbutton5;
        isbutton6 = false;
      });
    } else if (buttonIndex == 6) {
      setState(() {
        isbutton6 = !isbutton6;
        isbutton5 = false;
      });
    }
  }

  void handle4ButtonToggle(int buttonIndex) {
    if (buttonIndex == 7) {
      setState(() {
        isbutton7 = !isbutton7;
        isbutton8 = false;
      });
    } else if (buttonIndex == 8) {
      setState(() {
        isbutton8 = !isbutton8;
        isbutton7 = false;
      });
    }
  }

  void handle5ButtonToggle(int buttonIndex) {
    if (buttonIndex == 9) {
      setState(() {
        isbutton9 = !isbutton9;
        isbutton10 = false;
      });
    } else if (buttonIndex == 10) {
      setState(() {
        isbutton10 = !isbutton10;
        isbutton9 = false;
      });
    }
  }

  Widget buildButton(int buttonIndex) {
    String label = buttonIndex == 1 ? "OFF" : "ON";
    Color buttonColor = Colors.black;
    Color textColor = buttonIndex == 1
        ? (isbutton1 ? Colors.red : Colors.white)
        : (isbutton2 ? Colors.green : Colors.white);
    Color topBorderColor = buttonIndex == 1
        ? (isbutton1 ? Colors.red : Colors.black)
        : (isbutton2 ? Colors.green : Colors.black);

    return GestureDetector(
      onTap: () {
        handleButtonToggle(buttonIndex);
      },
      child: Container(
        width: 60,
        height: context.screenHeight*.034,
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
              child:
              Padding(
                padding: const EdgeInsets.all(1),
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
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

  Widget build2RowButton(int buttonIndex) {
    String label = buttonIndex == 3 ? "OFF" : "ON";
    Color buttonColor = Colors.black;
    Color textColor = buttonIndex == 3
        ? (isbutton3 ? Colors.red : Colors.white)
        : (isbutton4 ? Colors.green : Colors.white);
    Color topBorderColor = buttonIndex == 3
        ? (isbutton3 ? Colors.red : Colors.black)
        : (isbutton4 ? Colors.green : Colors.black);

    return GestureDetector(
      onTap: () {
        handle2ButtonToggle(buttonIndex);
      },
      child: Container(
        width: 60,
        height: context.screenHeight*.034,
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
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
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

  Widget build3RowButton(int buttonIndex) {
    String label = buttonIndex == 5 ? "OFF" : "ON";
    Color buttonColor = Colors.black;
    Color textColor = buttonIndex == 5
        ? (isbutton5 ? Colors.red : Colors.white)
        : (isbutton6 ? Colors.green : Colors.white);
    Color topBorderColor = buttonIndex == 5
        ? (isbutton5 ? Colors.red : Colors.black)
        : (isbutton6 ? Colors.green : Colors.black);

    return GestureDetector(
      onTap: () {
        handle3ButtonToggle(buttonIndex);
      },
      child: Container(
        width: 60,
        height: context.screenHeight*.034,
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
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
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

  Widget build4RowButton(int buttonIndex) {
    String label = buttonIndex == 7 ? "OFF" : "ON";
    Color buttonColor = Colors.black;
    Color textColor = buttonIndex == 7
        ? (isbutton7 ? Colors.red : Colors.white)
        : (isbutton8 ? Colors.green : Colors.white);
    Color topBorderColor = buttonIndex == 7
        ? (isbutton7 ? Colors.red : Colors.black)
        : (isbutton8 ? Colors.green : Colors.black);

    return GestureDetector(
      onTap: () {
        handle4ButtonToggle(buttonIndex);
      },
      child: Container(
        width: 60,
        height: context.screenHeight*.034,
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
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
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

  Widget build5RowButton(int buttonIndex) {
    String label = buttonIndex == 9 ? "OFF" : "ON";
    Color buttonColor = Colors.black;
    Color textColor = buttonIndex == 9
        ? (isbutton9 ? Colors.red : Colors.white)
        : (isbutton10 ? Colors.green : Colors.white);
    Color topBorderColor = buttonIndex == 9
        ? (isbutton9 ? Colors.red : Colors.black)
        : (isbutton10 ? Colors.green : Colors.black);

    return GestureDetector(
      onTap: () {
        handle5ButtonToggle(buttonIndex);
      },
      child: Container(
        width: 60,
        height: context.screenHeight*.034,
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
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
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
              height: _isContainerVisible ? context.screenHeight*.47 : 100,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "System\nCurrent",
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: "OverChg".text.bold.white.make(),
                                  ),
                                  Row(
                                    children: [
                                      buildButton(1),
                                      5.widthBox,
                                      buildButton(2),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: "second Row".text.bold.white.make(),
                                  ),
                                  Row(
                                    children: [
                                      build2RowButton(3),
                                      5.widthBox,
                                      build2RowButton(4),
                                    ],
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: "Thrid Row".text.bold.white.make(),
                                  ),
                                  Row(
                                    children: [
                                      build3RowButton(5),
                                      5.widthBox,
                                      build3RowButton(6),
                                    ],
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: "Thrid Row".text.bold.white.make(),
                                  ),
                                  Row(
                                    children: [
                                      build4RowButton(7),
                                      5.widthBox,
                                      build4RowButton(8),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: "Thrid Row".text.bold.white.make(),
                                  ),
                                  Row(
                                    children: [
                                      build5RowButton(9),
                                      5.widthBox,
                                      build5RowButton(10),
                                    ],
                                  ),
                                ],
                              ),

                              // Continue similar structure for other buttons
                              // ...
                            ],
                          ),
                        ),
                      Spacer(),
                      if (_isContainerVisible)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              InkWell(
  onTap: () {
    // Your onTap logic here
  },
  child: Container(
    height: context.screenHeight * 0.05,
    width: context.screenHeight * 0.05,
    decoration: BoxDecoration(
      color: primaryColor,
      borderRadius: BorderRadius.circular(30),
    ),
    child: Center(
      child: Icon(Icons.power_settings_new),
    ),
  ),
)
,
                             5.widthBox,
                               GestureDetector(
                              onTap: (){},
                               child: Container(
                                height: context.screenHeight*.04,
                                width: context.screenHeight*.12,
                               
                                
                               decoration:BoxDecoration(
                                  color:Color(0xFF2A2A2A) ,
                                             border: Border.all(
                color:primaryColor, // Border color
                width: 2, // Border width
              ),
                                           borderRadius: BorderRadius.circular(30), // Border radius
                                         ),
                                         child: Center(
                                           child:
                                           "clear".text.bold.color(primaryColor).make()
                                         ),
                               ),
                             )

                          ],
                        )
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
