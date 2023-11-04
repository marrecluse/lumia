 // ignore_for_file: prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables

 import 'package:flutter/material.dart';
import 'package:lumia/app_const/color_consts.dart';
import 'package:lumia/app_const/constants.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/current%20views/Chg_current.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/current%20views/current_threshold.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/current%20views/dsg_current.dart';
import 'package:velocity_x/velocity_x.dart';

class CurrentView extends StatefulWidget {
  CurrentView({Key? key}) : super(key: key);

  @override
  _CurrentViewState createState() => _CurrentViewState();
}

class _CurrentViewState extends State<CurrentView> {
  final List<String> items = ['Charge Current', 'DSG Current', 'Current Threshold'];
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
          title: "Current Settings".text.bold.make(),
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
                  children: <Widget>[
                    // SingleVoltageSettingScreen(), // Include your custom widgets here
                    // TotalVoltageScreen(),
                    // VoltageDifferenceSettingScreen(),
                    ChargeCurrent(),
                    DsgCurrent(),
                    CurrentThreshold()
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
