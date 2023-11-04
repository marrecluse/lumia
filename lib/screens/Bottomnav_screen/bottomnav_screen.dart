 // ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors

 import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:lumia/app_const/constants.dart';
import 'package:lumia/screens/Bottomnav_screen/Origin_screen.dart';
import 'package:lumia/screens/Bottomnav_screen/clock_screen.dart';
import 'package:lumia/screens/Bottomnav_screen/profile_screen.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/setting_screen.dart';
 
 import 'bluetooth_screen.dart';
 

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 2; // Index of the selected tab

  // Define your views (tabs) here
  final List<Widget> _views = [
     
    Bluetooth(),
    ClockScreen(),
    OriginScreen(), 
    ProfieScreen(),
    SettingScreen()
  ];

  // Function to handle tab selection
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _views[_selectedIndex], // Display the selected view
        bottomNavigationBar:  ConvexAppBar(
          backgroundColor: Color.fromRGBO(42, 42, 42, 1), 
          items: const [
        TabItem(icon: Image(image: AssetImage(ic_bluetoothBar),)),
         TabItem(icon: Image(image: AssetImage( ic_clockbar)), ),
        TabItem(icon:  Image(image: AssetImage( img1)),),
        TabItem(icon:  Image(image: AssetImage( ic_personbar)),),
        TabItem(icon:  Image(image: AssetImage( ic_settingbar)),),
          ],
           style: TabStyle.fixedCircle,
           onTap:  _onItemTapped,
          
           
      
        ),
    
      ),
    );
  }
}

 

 

 
 