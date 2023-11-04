import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lumia/screens/Bottomnav_screen/Origin_screen.dart';
import 'package:lumia/screens/Bottomnav_screen/bluetooth_screen.dart';
import 'package:lumia/screens/Bottomnav_screen/bottomnav_screen.dart';
import 'package:lumia/screens/Bottomnav_screen/clock_screen.dart';

import 'package:lumia/screens/Bottomnav_screen/settings_views/TemperatureView/Chg_temp.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/TemperatureView/Chglow_temp.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/TemperatureView/DsgHigh_temp.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/TemperatureView/Temperature_view.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/current%20views/Chg_current.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/current%20views/current_threshold.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/current%20views/current_view.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/current%20views/dsg_current.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/other_settings/Protocol_select.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/other_settings/SwitchControl.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/other_settings/System_Parameters.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/other_settings/callebration_settings.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/other_settings/other_view.dart';

import 'package:lumia/screens/Bottomnav_screen/settings_views/voltage_screens.dart/Toltal_voltage.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/voltage_screens.dart/single_voltage.dart';

import 'package:lumia/screens/Bottomnav_screen/settings_views/voltage_screens.dart/voltage_view.dart';

import 'package:lumia/screens/Splash_screen.dart';
import 'package:lumia/screens/auth_screen/forget-password.dart';
import 'package:lumia/screens/auth_screen/login.dart';
import 'package:lumia/screens/auth_screen/sign-up.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialRoute: '/',
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.leftToRight,
        getPages: [
          GetPage(name: '/', page: () => SplashScreen()),
          GetPage(name: '/login', page: () => Login()),
          GetPage(name: '/forget', page: () => ForgetPage()),
          GetPage(name: '/Signup', page: () => SignUpScreen()),
          GetPage(name: '/BottomNav', page: () => BottomNavScreen()),
          GetPage(name: '/bluetooth', page: () => Bluetooth()),
          GetPage(name: '/clock', page: () => ClockScreen()),
          GetPage(name: '/main', page: () => OriginScreen()),
          GetPage(name: '/voltageview', page: () => Voltage_View()),
          GetPage(name: '/totalvoltage', page: () => TotalVoltageScreen()),
          GetPage(
              name: '/singlevoltage', page: () => SingleVoltageSettingScreen()),
          GetPage(name: '/currentview', page: () => CurrentView()),
          GetPage(name: '/chgcurrent', page: () => ChargeCurrent()),
          GetPage(name: '/dsgcurrent', page: () => DsgCurrent()),
          GetPage(name: '/currentthreshold', page: () => CurrentThreshold()),
          GetPage(name: '/temeratureview', page: () => TemperatureView()),
          GetPage(name: '/chargetemperature', page: () => ChgTemp()),
          GetPage(name: '/chargelowtemperature', page: () => ChgLowTemp()),
          GetPage(name: '/dsghightemperature', page: () => DsgHighTemp()),
          GetPage(name: '/others', page: () => OtherViews()),
          GetPage(name: '/switchcontrol', page: () => SwitchControl()),
          GetPage(name: '/protocolselect', page: () => ProtocolSelect()),
          GetPage(name: '/systemparameters', page: () => SystemParameters()),
          GetPage(
              name: '/callebrationsetting', page: () => CallebrationSetting()),
        ],
        home: BottomNavScreen());
  }
}

