// ignore_for_file: unused_import, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:lumia/app_const/constants.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../app_const/color_consts.dart';
 class ClockScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: primaryColor2,
       appBar: AppBar(

         leading:
         GestureDetector(
             onTap: (){
               Navigator.pop(context);
             },
             child: Image.asset(ic_back)),
         backgroundColor: Colors.transparent,
         centerTitle: true,
         title: Text('Settings'),
       ),
       body:  Center(
         child: Image.asset('assets/icons/ic_alarm.png'),
       )
     );

  }
}