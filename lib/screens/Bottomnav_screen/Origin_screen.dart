// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, library_private_types_in_public_api, annotate_overrides, avoid_unnecessary_containers, sort_child_properties_last, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lumia/app_const/color_consts.dart';
import 'package:lumia/app_const/color_consts.dart';
import 'package:lumia/app_const/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:velocity_x/velocity_x.dart';

class OriginScreen extends StatefulWidget {
  
  const OriginScreen({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<OriginScreen> {
  TextStyle myTextStyle = GoogleFonts.inter(
  fontSize: 20,
  color: Colors.white,
  fontWeight: FontWeight.w800, // You can adjust the weight
  
);
TextStyle myTextStyle2 = GoogleFonts.inter(
  fontSize: 18,
  color: primaryColor,
  fontWeight: FontWeight.w800, // You can adjust the weight
  
);
  bool _isContainerVisible = false;

  final List<int> containerCount = [1, 2, 3, 4, 5];

  void _toggleContainerVisibility() {
    setState(() {
      _isContainerVisible = !_isContainerVisible;
    });
  }

@override
void initState() {
  super.initState();
  // _showNameInputDialog(context);
}


// Future<void> _showNameInputDialog(BuildContext context) async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   bool dialogShown = prefs.getBool('dialogShown') ?? false;

//   if (!dialogShown) {
//     String newName = '';
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Center(child: Text('Input a New Name')),
//           content: TextField(
//             onChanged: (value) {
//               newName = value;
//             },
//           ),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () {
//                 // Cancel button
//                 Navigator.of(context).pop();
//               },
//               child: Text('Cancel'),
//             ),
//             TextButton(
//               onPressed: () {
//                 // Confirm button
//                 // You can use 'newName' to access the entered name
//                 prefs.setBool('dialogShown', true);
//                 Navigator.of(context).pop();
//               },
//               child: Text('Confirm'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }

  List<Map<String, dynamic>> yourDataList = [
    {
      "imagePath":
          "assets/icons/battery.png", // Replace with the actual image path
      "text": "3295mV",
    },
    {
      "imagePath":
          "assets/icons/battery.png", // Replace with the actual image path
      "text": "3295mV",
    },
    {
      "imagePath":
          "assets/icons/battery.png", // Replace with the actual image path
      "text": "3295mV",
    },
    {
      "imagePath":
          "assets/icons/battery.png", // Replace with the actual image path
      "text": "3295mV",
    },
    {
      "imagePath":
          "assets/icons/battery.png", // Replace with the actual image path
      "text": "3295mV",
    },
    {
      "imagePath":
          "assets/icons/battery.png", // Replace with the actual image path
      "text": "3295mV",
    },
    {
      "imagePath":
          "assets/icons/battery.png", // Replace with the actual image path
      "text": "3295mV",
    },
    {
      "imagePath":
          "assets/icons/battery.png", // Replace with the actual image path
      "text": "3295mV",
    },
    {
      "imagePath":
          "assets/icons/battery.png", // Replace with the actual image path
      "text": "3295mV",
    },
    {
      "imagePath":
          "assets/icons/battery.png", // Replace with the actual image path
      "text": "3295mV",
    },
    {
      "imagePath":
          "assets/icons/battery.png", // Replace with the actual image path
      "text": "3295mV",
    },
    {
      "imagePath":
          "assets/icons/battery.png", // Replace with the actual image path
      "text": "3295mV",
    },
    {
      "imagePath":
          "assets/icons/battery.png", // Replace with the actual image path
      "text": "3295mV",
    },
    {
      "imagePath":
          "assets/icons/battery.png", // Replace with the actual image path
      "text": "3295mV",
    },
    {
      "imagePath":
          "assets/icons/battery.png", // Replace with the actual image path
      "text": "3295mV",
    },
    {
      "imagePath":
          "assets/icons/battery.png", // Replace with the actual image path
      "text": "3295mV",
    },
    {
      "imagePath":
          "assets/icons/battery.png", // Replace with the actual image path
      "text": "3295mV",
    },
    {
      "imagePath":
          "assets/icons/battery.png", // Replace with the actual image path
      "text": "3295mV",
    },
   
    // Add more items as needed
  ];

  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: primaryColor2,
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Top Row with Background
            Container(
              padding: const EdgeInsets.only(top: 20),
              margin: const EdgeInsets.only(bottom: 20),
              width: screenWidth,
              height: screenHeight / 2.1,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/logos/Ellipse.png"),
                  fit: BoxFit.fill,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: context.screenWidth * 0.1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(img1, height: 50, width: 50),
                                  5.widthBox,
                                  "LUMIA+"
                                      .text
                                      .white
                                      .fontWeight(FontWeight.w900).fontFamily("Inter")
                                      .make(),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                child: CircleAvatar(
                                  backgroundColor:
                                      const Color.fromRGBO(43, 43, 43, 1),
                                  child: const Icon(
                                    Icons.notifications_none_outlined,
                                    color: Color.fromRGBO(217, 141, 48, 1),
                                  ),
                                  radius:
                                      0.05 * MediaQuery.of(context).size.width,
                                ),
                              ),
                              10.widthBox,
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                                "System Status:".text.fontFamily("inter").white.make(),
                              Container(
                                padding: const EdgeInsets.only(top: 2, left: 4),
                                child: const Text(
                                  "Charging",
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 206, 47, 10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Loader Section
                      SizedBox(
                        height: context.screenHeight*.2,
                        width:  context.screenHeight*.2,
                        child: Stack(
                          children: [
                            Center(
                              child:
                              Container(
                                width: screenWidth / 2,
                                height: screenWidth / 2,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(42, 42, 42, 1),
                                  borderRadius: BorderRadius.circular(context.screenWidth*1),
                                ),
                              ),
                            ),
                            Center(
                              child:

                              SizedBox(
                                height: context.screenHeight*.18,
                                width: context.screenHeight*.18,
                                child: Container(
                                  // margin: const EdgeInsets.only(top: 10),
                                  width: screenWidth / 2.3,
                                  height: screenWidth / 2.3,
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(55, 55, 55, 1),
                                    borderRadius: BorderRadius.circular(context.screenWidth*1),
                                  ),
                                  child: const Center(
                                      child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '⚡ SOC',
                                        style: TextStyle(color: Colors.orange),
                                      ),
                                      Text(
                                        '60%',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  )),
                                ),
                              ),
                            ),
                            Center(
                              child:
                              SizedBox(
                                height: context.screenHeight*.16,
                                width:context.screenHeight*.16,
                                child: ClipOval(
                                  child: TweenAnimationBuilder(
                                    tween: Tween(begin: 0.0, end: 0.60),
                                    duration: const Duration(seconds: 2),
                                    builder: (context, value, child) {
                                      return Container(
                                        width: screenWidth / 2.6,
                                        height: screenWidth / 2.6,
                                        color: Colors.transparent,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(80.0),
                                          child: CircularProgressIndicator(
                                            strokeWidth:
                                                context.screenHeight*.02,
                                            valueColor:
                                                const AlwaysStoppedAnimation<
                                                    Color>(
                                              Color.fromRGBO(217, 141, 48, 1),
                                            ),
                                            value: value,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              width: 390,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 45),


                  ),

                  Container(
                    padding: const EdgeInsets.only(left: 80, top: 3),

                  ),
                ],
              ),
            ),
            Container(
              width: context.screenWidth*.9,
              // padding: const EdgeInsets.only(left:  15),
              child:


                  Row(
                    children: [
                      Column(
                              crossAxisAlignment:CrossAxisAlignment.end,
                        children: [

                          "Total Voltage".text.fontFamily("inter").color(primaryColor).make(),
                          "Current".text.color(primaryColor).fontFamily('inter').make(),

                          "Rated Capacity".text.color(primaryColor).fontFamily('inter').make(),
                          SizedBox(
                            height: context.screenHeight*.02,
                          ),

                          SizedBox(

                            width: context.screenWidth*.3,
                            height: 29,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(217, 141, 48, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9),
                                ),
                              ),
                              child:
                              "Cell Voltages".text.fontFamily("inter").white.make()
                            ),
                          ),
                        ],
                      ),
                      10.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "52.73V".text.fontFamily("inter").white.make(),
                          "0A".text.fontFamily("inter").white.make(),
                           "100AH".text.fontFamily("inter").white.make(),
                          SizedBox(
                            height: context.screenHeight*.02,
                          ),

                          SizedBox(
                            width: context.screenWidth*.3,
                            height: 29,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                const Color.fromRGBO(42, 42, 42, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9),
                                ),
                              ),
                              child: const Text(
                                "Temperature",
                                style: TextStyle(
                                  color: Color.fromRGBO(84, 79, 79, 1),
                                  fontSize: 9,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),

                        ],
                      )
                    ],

                  ),

            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(42, 42, 42, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: context.screenWidth*.9,
                    height: _isContainerVisible ? 195 : 55,
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            width: 300,
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom:
                                    BorderSide(width: 1, color: Colors.white),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                               "Cell Voltages".text.fontFamily("inter").white.make(),

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
                          if (_isContainerVisible)
                            Container(
                              padding: const EdgeInsets.only(top: 15),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "2MV",
                                    style: TextStyle(
                                      color:primaryColor,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    "3297mV",
                                    style: TextStyle(
                                      color:primaryColor,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    "3295mV",
                                    style: TextStyle(
                                      color: primaryColor,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          if (_isContainerVisible)
                            Container(
                              width: 280,
                              padding: const EdgeInsets.only(right: 20),
                              child: const Row(

                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "3295mV",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Max Volt",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Min Volt",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          SizedBox(
                            height: 10,
                          ),
                          if (_isContainerVisible)
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: Container(
                                  width: 300,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: yourDataList
                                          .asMap()
                                          .entries
                                          .map((entry) {
                                        final index = entry.key;
                                        final item = entry.value;
                                        return Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Column(
                                           children: [
                  Stack(
                    children: [
                      Image.asset(item["imagePath"]),
                      Positioned(
                        bottom: 20,
                       right: 14,
                        child: Text(
                            '${index + 1}', // Dynamic value for battery number
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12, // Adjust the font size as needed
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ],
                  ),
                                SizedBox(height: 2,),
                                              Text(
                                                item[
                                                    "text"], // Dynamic value for text
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 9,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                )),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
