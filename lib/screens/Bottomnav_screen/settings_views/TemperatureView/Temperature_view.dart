 // ignore_for_file: file_names, prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors

 import 'package:flutter/material.dart';
import 'package:lumia/app_const/color_consts.dart';
import 'package:lumia/app_const/constants.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/TemperatureView/Chg_temp.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/TemperatureView/Chglow_temp.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/TemperatureView/DsgHigh_temp.dart';
 
import 'package:velocity_x/velocity_x.dart';

class TemperatureView extends StatefulWidget {
  TemperatureView({Key? key}) : super(key: key);

  @override
  _CurrentViewState createState() => _CurrentViewState();
}

class _CurrentViewState extends State<TemperatureView> {
  final List<String> items = ['CHG Temperature', 'CHG low Temperature', 'DSG High Temperature'];
  int currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context, true);
            },
            child: Image.asset(ic_back)),
          backgroundColor: primaryColor2,
          title: "Temperature Settings".text.bold.make(),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
          child: Column(
            children: [
              
              10.heightBox,
              Container(
                  padding: const EdgeInsets.all(18.0),
                color: Colors.black,
                child: SizedBox(
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
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          margin: EdgeInsets.all(3),
                          width: context.screenWidth * 0.4,
                          decoration: BoxDecoration(
                            color: currentTabIndex == index ? primaryColor : Color(0xFF544F4F),
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
              Expanded(
                child: IndexedStack(
                  index: currentTabIndex,
                  children: const <Widget>[
                    // SingleVoltageSettingScreen(), // Include your custom widgets here
                    // TotalVoltageScreen(),
                    // VoltageDifferenceSettingScreen(),
                    // ChargeCurrent(),
                    // DsgCurrent(),
                    // CurrentThreshold()
                    ChgTemp(),
                    ChgLowTemp(),
                    DsgHighTemp()

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
