
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lumia/screens/Bottomnav_screen/bottomnav_screen.dart';
import 'package:lumia/screens/auth_screen/sign-up.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:firebase_auth/firebase_auth.dart';
 
import '../../app_const/color_consts.dart';
import '../../app_const/constants.dart';
import 'forget-password.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _loginState();
}

class _loginState extends State<Login> {


  @override
  bool _obscureText = true;
   final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

   Future<void> _login() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      // Show an error message for empty fields
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please enter both email and password.'),
        ),
      );
    } else {
      try {
        await _auth.signInWithEmailAndPassword(email: email, password: password);
         Get.to(()=>BottomNavScreen());
      } catch (e) {
        // Handle authentication errors, e.g., show an error message to the user.
        print('Error: $e');
      }
    }
  }

  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    fontSize: screenWidth < 600 ? 16 : 24; // Adjust font size based on screen width

    return 
      Scaffold(
      backgroundColor: Colors.black,
      body:
      SingleChildScrollView(
        child: Container(
          width: double.infinity,

          color: Colors.black,
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: screenHeight * 0.1),
                  child: SizedBox(
                    width: screenWidth * 0.8,
                    height: screenHeight * 0.15,
                    child: Image.asset(img1),
                  ),
                ),


              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: screenHeight * 0.1),
                  child: Text(
                    "Login",
                    style:   GoogleFonts.inter(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),

              ),
              Center(
                child:Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color:Color.fromARGB(0, 0, 0, 1) ,
                          blurRadius: 3,

                        )
                      ]
                  ),
                  margin: EdgeInsets.only(top: 30),
                  child: SizedBox(
                    width: screenWidth -60,
                    height: 47,
                    child: TextField(
                      controller:_emailController ,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 13,
                        ),
                        filled: true,
                        fillColor: Color.fromRGBO(42, 42, 42, 1),
                        hintText: "Enter email",

                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Color.fromRGBO(217, 141, 48, 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.18),
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
                  padding:EdgeInsets.symmetric(horizontal: context.screenWidth*.03),
                  margin: EdgeInsets.only(top: 50),
                  width: screenWidth - 37,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 59,
                        child: Center(
                          child: InkWell(
                            onTap: (){
                              _login();
                            },
                            child:  Text(
                              "Login",
                              style:   GoogleFonts.inter(
                                fontSize: 18,
                                color: primaryColor,
                                fontWeight: FontWeight.w800,
                              ),)
                          ),
                        ),
                      ),

                      InkWell(
                        onTap:(){
                          _login();
                           

                        } ,
                        child: CircleAvatar(

                          backgroundColor: Color.fromRGBO(217, 141, 48, 1),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white, // Set the icon color here
                          ),
                          // You can set the size of the CircleAvatar using the 'radius' property.
                          radius: 30, // Adjust the size as needed
                        ),
                      )

                    ],
                  ),
                ),
              ),
              // Spacer(),
              SizedBox(
                height: context.screenHeight*.2,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom:12.0),
                  child: Container(

                    // width: screenWidth - 40,
                    width: context.screenWidth*.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(
                          child: Container(

                            child: Column(
                              children: [
                                InkWell(
                                  onTap: (){
                                    Get.to(()=>SignUpScreen());
                                  },
                                  child:  Text(
                                    "Sign up",
                                    style:   GoogleFonts.inter(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                    ),
                                ),),
                                Container(
                                  width: 66,
                                  height: 1,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),

                        Container(
                          child: Column(
                            children: [
                              InkWell(
                                onTap: (){
                                Get.to(()=>ForgetPage());
                                },
                                child:   Text(
                                  "Forget Password",
                                  style:   GoogleFonts.inter(
                                    fontSize: 18,
                                    color: primaryColor,
                                    fontWeight: FontWeight.w800,
                                  ),
                                )
                              ),
                              Container(
                                width: 155,
                                height: 1,
                                color: Color.fromRGBO(217, 141, 48, 1),
                              ),


                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
              ,
              SizedBox(
                height: context.screenHeight*.05,
              )
            ],
          ),
        ),
      ),
    );
  }
}
