 // ignore_for_file: file_names, camel_case_types, avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lumia/Reusable_widgets/reusable_textfields.dart';
import 'package:lumia/app_const/color_consts.dart';
import 'package:lumia/app_const/constants.dart';
import 'package:lumia/screens/auth_screen/login.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _confirmEmailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _confirmPhoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  Future<void> _registerUser() async {
    final email = _emailController.text.trim();
    final confirmEmail = _confirmEmailController.text.trim();
    final password = _passwordController.text.trim();
    final confirmPassword = _confirmPasswordController.text;

    if (email.isEmpty ||
        confirmEmail.isEmpty ||
        password.isEmpty ||
        confirmPassword.isEmpty) {
      // Show an error message for empty fields
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please fill in all fields.'),
        ),
      );
    } else if (email != confirmEmail) {
      // Show an error message for email confirmation mismatch
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Emails do not match.'),
        ),
      );
    } else if (password != confirmPassword) {
      // Show an error message for password confirmation mismatch
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Passwords do not match.'),
        ),
      );
    } else {
      try {
          final authResult = await _auth.createUserWithEmailAndPassword(email: email, password: password);
          final user = authResult.user;
        await _auth.createUserWithEmailAndPassword(email: email, password: password);
        // Send a verification email to the user
         await user!.sendEmailVerification();

        // Show a success message to the user
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Registration successful. Please verify your email.'),
          ),
        );

        // You can navigate to another screen or perform additional actions here.
      } catch (e) {
        // Handle registration errors, e.g., show an error message to the user.
        print('Error: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
     bool _obscureText = true;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                SizedBox(
                  height: context.screenHeight * 0.07,
                ),
                SizedBox(width: 113, height: 112, child: Image.asset(img1)),
                SizedBox(
                  height: context.screenHeight * 0.05,
                ),
                Center(
                  child: Container(
                    child: Text("Create Account",
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        )),
                  ),
                ),
                SizedBox(
                  height: context.screenHeight * 0.03,
                ),
                ReusableTextField(context, "Enter your email", Icons.email, _emailController),
                SizedBox(height: 20),
                ReusableTextField(context, 'Confirm Email', Icons.email, _confirmEmailController),
                SizedBox(height: context.screenHeight * 0.02),
                // PasswordInputField(
                //   hintText: "Password",
                //   onSaved: (password) {
                //     // Handle the password input here
                //   },
                   
                // ),
                // SizedBox(height: context.screenHeight * 0.02),
                // PasswordInputField(
                //   hintText: "Confirm Password",
                //   onSaved: (password) {
                //     // Handle the password input here
                //   },
                    
                // ),
                 Center(
                child: Container(
                  // margin: EdgeInsets.only(top: 13),
                  child: SizedBox(
                    width: screenWidth - 60,
                    height: 47,
                    child: TextField(
                      controller: _passwordController,
                      style: TextStyle(color: Colors.white),
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 13,
                        ),
                        filled: true,
                        fillColor: Color.fromRGBO(42, 42, 42, 1),
                        hintText: "Password",
                        prefixIcon: Icon(
                          Icons.lock_outlined,
                          color:Color.fromRGBO(217, 141, 48, 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.18),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          child: SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 14),
                              child: Icon(
                                _obscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Color.fromRGBO(217, 141, 48, 1),
                              ),
                            ),
                          ),
                        ),
                        suffixIconConstraints: BoxConstraints(
                          minHeight: 32,
                          minWidth: 24,
                        ),
                      ),
                    ),
                  ),
                ),
              ),


              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 13),
                  child: SizedBox(
                    width: screenWidth - 60,
                    height: 47,
                    child: TextField(
                       controller: _confirmPasswordController,
                      style: TextStyle(color: Colors.white),
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 13,
                        ),
                        filled: true,
                        fillColor: Color.fromRGBO(42, 42, 42, 1),
                        hintText: "Confirm Password",
                        prefixIcon: Icon(
                          Icons.lock_outlined,
                          color:Color.fromRGBO(217, 141, 48, 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.18),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          child: SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 14),
                              child: Icon(
                                _obscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Color.fromRGBO(217, 141, 48, 1),
                              ),
                            ),
                          ),
                        ),
                        suffixIconConstraints: BoxConstraints(
                          minHeight: 32,
                          minWidth: 24,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
                // SizedBox(height: 20),
                // ReusableTextField(context, 'Confirm Password', Icons.email, _confirmEmailController),
                SizedBox(height: context.screenHeight * 0.02),
                ReusableTextField(context, "Phone number", Icons.phone, _phoneController),
                SizedBox(height: context.screenHeight * 0.02),
                ReusableTextField(context, "Confirm Phone number", Icons.phone, _confirmPhoneController),
                SizedBox(
                  height: context.screenHeight * 0.05,
                ),
                Center(
                  child: Container(
                    width: screenWidth - 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 59,
                          child: Center(
                            child: Text("Sign up",
                                style: GoogleFonts.inter(
                                  fontSize: 18,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w800,
                                )),
                          ),
                        ),
                        InkWell(
                          onTap:(){
                            
                            _registerUser();
                          },
                          child: CircleAvatar(
                            backgroundColor: Color.fromRGBO(217, 141, 48, 1),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                            radius: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    width: screenWidth - 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 20),
                            padding: EdgeInsets.only(bottom: 10),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.to(() => Login());
                                  },
                                  child: Text("Login",
                                      style: GoogleFonts.inter(
                                        fontSize: 18,
                                        color: primaryColor,
                                        fontWeight: FontWeight.w800,
                                      )),
                                ),
                                Container(
                                  width: 40,
                                  height: 1,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: context.screenHeight * 0.05,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
