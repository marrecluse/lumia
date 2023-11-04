 // ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lumia/app_const/color_consts.dart';
import 'package:lumia/app_const/constants.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/TemperatureView/Temperature_view.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/current%20views/current_view.dart';
import 'package:lumia/screens/Bottomnav_screen/settings_views/other_settings/other_view.dart';
 
import 'package:lumia/screens/Bottomnav_screen/settings_views/voltage_screens.dart/voltage_view.dart';
 
import 'package:velocity_x/velocity_x.dart'; // Import your separate views

 
 

 class SettingScreen extends StatelessWidget {
  SettingScreen({Key? key}) : super(key: key);
TextStyle myTextStyle = GoogleFonts.inter(
  fontSize: 18,
  color: Colors.white,
  fontWeight: FontWeight.w800, // You can adjust the weight
  
);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: 
        SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: context.screenWidth * 0.05),
            margin: EdgeInsets.only(top: context.screenHeight * 0.03),
            child:  Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Card(
                        color: Color.fromRGBO(42, 42, 42, 1),
                        child: 
                        GestureDetector(
                          onTap: (){
                            Get.to(()=>Voltage_View());
                          },
                          child: ListTile(
                            leading: Container(
                              margin: EdgeInsets.symmetric(vertical: context.screenHeight * 0.005),
                              height: context.screenHeight * 0.15,
                              width: context.screenWidth * 0.13,
                              child: CircleAvatar(
                                backgroundColor: primaryColor2,
                                child: Container(
                                  margin: EdgeInsets.only(top: context.screenHeight*.01),
                                  child: GestureDetector(
                                    child: Image.asset(ic_charge, fit: BoxFit.cover,))),
                                  
                              ),
                              
                            ),
                            title:  "Voltage Setting".text
  .white
  .fontWeight(FontWeight.bold)
  .fontFamily('Inter') // Specify the font family name here
  .make()

                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: context.screenHeight * 0.01),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Card(
                        color: Color.fromRGBO(42, 42, 42, 1),
                        child: GestureDetector(
                          onTap: (){
                            Get.to(()=>CurrentView());
                          },
                          child: ListTile(
                            leading: Container(
                              margin: EdgeInsets.symmetric(vertical: context.screenHeight * 0.005),
                              height: context.screenHeight * 0.15,
                              width: context.screenWidth * 0.13,
                              child: CircleAvatar(
                                backgroundColor: primaryColor2,
                                child: Image.asset(ic_current, fit: BoxFit.cover,),
                                  
                              ),
                              
                            ),
                            title: "Current Setting".text.white.fontWeight(FontWeight.bold).fontFamily("inter").make(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: context.screenHeight * 0.01),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Card(
                        color: Color.fromRGBO(42, 42, 42, 1),
                        child: 
                        GestureDetector(
                          onTap: (){
                            Get.to(()=>TemperatureView());
                          },
                          child: ListTile(
                            leading: Container(
                              margin: EdgeInsets.symmetric(vertical: context.screenHeight * 0.005),
                              height: context.screenHeight * 0.15,
                              width: context.screenWidth * 0.13,
                              child: CircleAvatar(
                                backgroundColor: primaryColor2,
                                child: Image.asset(ic_temp, fit: BoxFit.cover,),
                                  
                              ),
                              
                            ),
                            title: "Temperature Setting".text.white.fontWeight(FontWeight.bold).fontFamily("inter").make(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: context.screenHeight * 0.01),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Card(
                        color: Color.fromRGBO(42, 42, 42, 1),
                        child: ListTile(
                          leading: Container(
                            margin: EdgeInsets.symmetric(vertical: context.screenHeight * 0.005),
                            height: context.screenHeight * 0.15,
                            width: context.screenWidth * 0.13,
                            child: CircleAvatar(
                              backgroundColor: primaryColor2,
                              child: Image.asset(ic_bal, fit: BoxFit.cover,),
                                
                            ),
                            
                          ),
                          title: "Balance Setting".text.white.fontWeight(FontWeight.bold).fontFamily("inter").make(),
                        ),
                      ),
                    ),
                    SizedBox(height: context.screenHeight * 0.01),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Card(
                        color: Color.fromRGBO(42, 42, 42, 1),
                        child: 
                        GestureDetector(
                          onTap: (){
                            Get.to(()=>OtherViews());
                          },
                          child: ListTile(
                            leading: Container(
                              margin: EdgeInsets.symmetric(vertical: context.screenHeight * 0.005),
                              height: context.screenHeight * 0.15,
                              width: context.screenWidth * 0.13,
                              child: CircleAvatar(
                                backgroundColor: primaryColor2,
                                child: Image.asset(ic_setting2, fit: BoxFit.cover,),
                                  
                              ),
                              
                            ),
                            title: "Other Settings".text.white.fontWeight(FontWeight.bold).fontFamily("inter").make(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: context.screenHeight * 0.01),
                  ],
               
             
            ),
          ),
        ),
      ),
    );
  }
}


