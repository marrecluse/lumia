 import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart'; // Import the material package for the 'BuildContext'.
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:lumia/app_const/firebase_constant.dart';
import 'package:velocity_x/velocity_x.dart';

class AuthController extends GetxController {
  Future<UserCredential?> loginMethod(email, password, BuildContext context) async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } catch (e) {
      VxToast.show(context, msg: e.toString());
       // Return null or handle the error as needed in your application.
    }
     
  }
}
