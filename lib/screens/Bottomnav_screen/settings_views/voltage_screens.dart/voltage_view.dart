 // ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors

 import 'package:flutter/material.dart';
import 'package:lumia/app_const/color_consts.dart';
import 'package:lumia/app_const/constants.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/voltage_screens.dart/Toltal_voltage.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/voltage_screens.dart/single_voltage.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/voltage_screens.dart/voltage_difference.dart';
import 'package:velocity_x/velocity_x.dart';

class Voltage_View extends StatefulWidget {
   Voltage_View({Key? key}) : super(key: key);

  @override
  _Voltage_ViewState createState() => _Voltage_ViewState();
}

class _Voltage_ViewState extends State<Voltage_View> {
  final List<String> items = ['Total Voltage Settings', 'Single Voltage', 'Voltage Diff Settings'];
  int currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            
            onTap: (){
              Navigator.pop(context);
            },
            child: Image.asset(ic_back)),
          backgroundColor: primaryColor2,
          title: "Voltage Setting".text.bold.make(),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color:Colors.black,
          child: Column(
            children: [
              10.heightBox,
              // SizedBox(height: context.screenHeight * ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0),
                child: Container( // Wrap the SizedBox with a Container
                  color: Colors.black, // Set the background color to white
                  child: SizedBox( // Place your SizedBox here
                    height: context.screenHeight * 0.05,
                    width: double.infinity,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: items.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              currentTabIndex = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.all(3),
                            width: context.screenWidth * 0.4,
                            decoration: BoxDecoration(
                              color: currentTabIndex == index ? primaryColor :Color(0xFF544F4F),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: items[index].text.bold.white.make(),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: IndexedStack(
                  index: currentTabIndex,
                  children: const <Widget>[
                     SingleVoltageSettingScreen(),
                     TotalVoltageScreen(),
                     VoltageDifferenceSettingScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
