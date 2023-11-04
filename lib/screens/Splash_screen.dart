// ignore_for_file: unused_import, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lumia/app_const/color_consts.dart';
import 'package:lumia/app_const/constants.dart';
import 'package:lumia/screens/Bottomnav_screen/bottomnav_screen.dart';
 
import 'package:lumia/screens/Bottomnav_screen/settings_views/other_settings/other_view.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/setting2_view.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/setting_screen.dart';
import 'package:lumia/screens/auth_screen/login.dart';
 
 

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    
    // Simulate a delay (e.g., 3 seconds) for the splash screen
    Future.delayed(Duration(seconds: 3), () {
    //   // After the delay, navigate to the main screen or any other screen
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) =>Login() ,
        ));
      });
  }
  @override
  Widget build(BuildContext context) {
    return 
    SafeArea(
      child: Scaffold(
        backgroundColor:primaryColor2,
        body:SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset( ic_SplashScreen )) ,
          // color: Colors.amber,)
      ),
    );
  }
}