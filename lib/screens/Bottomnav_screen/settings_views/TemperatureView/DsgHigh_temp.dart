// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lumia/app_const/color_consts.dart';
import 'package:velocity_x/velocity_x.dart';

class DsgHighTemp extends StatefulWidget {
  const DsgHighTemp({super.key});

  @override
  State<DsgHighTemp> createState() => _DsgHighTempState();
}

class _DsgHighTempState extends State<DsgHighTemp> {
bool _isContainerVisible = false;
  void _toggleContainerVisibility() {
    setState(() {
      _isContainerVisible = !_isContainerVisible;
    });
  }
final List<Map<String, String>> voltageData = [
    {
      "title": "Total overCHG Warning",
      "value": "57.6 V ",
    },
    {
      "title": "Total overCHG Warning",
      "value": "57.6 V ",
    },
      {
      "title": "Total overCHG Warning",
      "value": "57.6 V ",
    },
    {
      "title": "Total overCHG Warning",
      "value": "57.6 V ",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:18.0),
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
              height:
                  _isContainerVisible ? 150 : 100, // Adjust the height as needed
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "DSG High\nTemperature",
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
                     SizedBox(height: 5,),
                    if (_isContainerVisible)
                        Column(

                          children: [
                           
                    
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: voltageData
                                    .map(
                                      (data) => Column(
                                        children: [
                                         
                                          Row(
                                          
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                          
                                                padding: EdgeInsets.all(8),
                                                margin: EdgeInsets.only(right:10),
                                                decoration: BoxDecoration(
                                                  color: primaryColor2,
                                                  border: Border.all(
                                                    color: Colors.grey,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius: BorderRadius.circular(5.0),
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
                                                      Row(
                                                        children: [
                                                          data["value"]!.text.white.make(),
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
                                    )
                                    .toList(),
                              ),
                            ),
                          ],
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
    );
  }
}