 import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../Reusable_widgets/reusable_textfields.dart';
import '../../app_const/constants.dart';

class ForgetPage extends StatefulWidget {
  const ForgetPage({Key? key}) : super(key: key);

  @override
  _ForgetPageState createState() => _ForgetPageState();
}

class _ForgetPageState extends State<ForgetPage> {
  final  _auth = FirebaseAuth.instance;
   final _forgetPasswordController = TextEditingController(); // Define the TextEditingController

  Future<void> _sendPasswordResetEmail() async {
    try {
      final email = _forgetPasswordController.text;

      // Send the password reset email
      await _auth.sendPasswordResetEmail(
        email: email,
      );
      // Show a success message to the user.
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Password reset email sent successfully"),
        ),
      );
    } catch (e) {
      // Show an error message to the user.
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Error sending password reset email"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: screenHeight,
            color: Colors.black,
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: screenHeight * 0.1),
                    child: SizedBox(
                      width: screenWidth * 0.8,
                      height: screenHeight * 0.15,
                      // Replace with your image asset
                      child: Image.asset(img1),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: screenHeight * 0.1),
                    child: Text(
                      "Forgot Password?",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: context.screenHeight * .03,
                ),
                ReusableTextField(context, 'Email', Icons.email, _forgetPasswordController),
                SizedBox(height: screenHeight * 0.04),
                // Container for your buttons
                Container(
                  margin: const EdgeInsets.only(top: 150),
                  width: screenWidth - 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 59,
                        child: Center(
                          child: Text(
                            "Send email",
                            style: TextStyle(
                              fontSize: 22,
                              color: Color.fromRGBO(217, 141, 48, 1),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          _sendPasswordResetEmail();
                        },
                        child: CircleAvatar(
                          backgroundColor: Color.fromRGBO(217, 141, 48, 1),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            // Set the icon color here
                          ),
                          radius: 30, // Adjust the size as needed
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
