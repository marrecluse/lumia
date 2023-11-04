// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lumia/app_const/color_consts.dart';
import 'package:lumia/app_const/constants.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/other_settings/Protocol_select.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/other_settings/SwitchControl.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/other_settings/System_Parameters.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/other_settings/callebration_settings.dart';
import 'package:velocity_x/velocity_x.dart';

class OtherViews extends StatefulWidget {
  const OtherViews({super.key});

  @override
  State<OtherViews> createState() => _OtherViewsState();
}

class _OtherViewsState extends State<OtherViews> {
  final List<String> items = ['Switch Control', 'Protocol Select', 'System Parameters','Callebration Setting'];
  int currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context, true);
          },
          child: Image.asset(ic_back),
        ),
        backgroundColor: primaryColor2,
        title: "Other Settings".text.bold.make(),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            10.heightBox,
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                color: Colors.black,
                child: SizedBox(
                  height: context.percentHeight * 5,
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
                          margin: EdgeInsets.all(2),
                          padding: EdgeInsets.symmetric(horizontal: 10),
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
            ),
            Expanded(
              child: IndexedStack(
                index: currentTabIndex,
                children: <Widget>[
                  SwitchControl(),
                  ProtocolSelect(),
                  SystemParameters(),
                  CallebrationSetting(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}