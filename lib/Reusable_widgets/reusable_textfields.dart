 // ignore_for_file: non_constant_identifier_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, library_private_types_in_public_api, avoid_unnecessary_containers

 import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget ReusableTextField(BuildContext context, String text, IconData icon,TextEditingController controller ) {
  return Center(
    child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xFF000000), // Fix the shadow color
            blurRadius: 3,
          )
        ],
      ),
      // margin: EdgeInsets.only(top: 17),
     // SizedBox(height: context.screenHeight*.017),
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 60, // Use MediaQuery to get screen width
        height: 47,
        child: TextField(
         controller: controller,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFF2A2A2A), // Use Color constant with alpha
            hintText: text,
            hintStyle: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 13,
            ),
            prefixIcon: Icon(
              icon,
              color: Color(0xFFD98D30), // Use Color constant
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.18),
              borderSide: BorderSide(
                color: Colors.transparent, // Hide the border
              ),
            ),
          ),
        ),
      ),
    ),
  );
}


// class PasswordInputField extends StatefulWidget {
//   final ValueChanged<String> onSaved;
//   final String hintText;

//   PasswordInputField({
//     required this.hintText,
//     required this.onSaved,
//     required TextEditingController  
     
//   });

//   @override
//   _PasswordInputFieldState createState() => _PasswordInputFieldState();
// }

// class _PasswordInputFieldState extends State<PasswordInputField> {
//   bool _obscureText = true;
//   TextEditingController controller=new TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         // margin: EdgeInsets.only(top: 17),
//         child: SizedBox(
//           width: context. screenWidth - 60,
//           height: 47,
//           child: TextFormField(
//               controller:controller ,
//             style: TextStyle(color: Colors.white),
//             obscureText: _obscureText,
//             decoration: InputDecoration(
//               filled: true,
//               fillColor: Color(0xFF2A2A2A),
//               hintText: widget.hintText,
//               hintStyle: TextStyle(
//                 color: Colors.grey.shade500,
//                 fontSize: 13,
//               ),
//               prefixIcon: Icon(
//                 Icons.lock_rounded,
//                 color: Color(0xFFD98D30),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(7.18),
//                 borderSide: BorderSide(
//                   color: Colors.transparent,
//                 ),
//               ),
//               suffixIcon: GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     _obscureText = !_obscureText;
//                   });
//                 },
//                 child: Container(
//                   padding:EdgeInsets.only(right: 14) ,
//                   child: Icon(
//                     _obscureText
//                         ? Icons.visibility_off
//                         : Icons.visibility,
//                     color: Color(0xFFD98D30),
//                   ),
//                 ),
//               ),
//               suffixIconConstraints: BoxConstraints(
//                 minHeight: 32,
//                 minWidth: 24,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
