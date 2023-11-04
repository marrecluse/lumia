
 // ignore_for_file: override_on_non_overriding_member, camel_case_types, annotate_overrides, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables
 
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();

}

class _homeState extends State<home> {
  bool _isContainerVisible = false;
  @override

  final List<int> containerCount = [1, 2, 3, 4, 5];
  void _toggleContainerVisibility() {
    setState(() {
      _isContainerVisible = !_isContainerVisible;
    });
  }

  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return 
    SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                Container(
                  height: screenHeight /1.9,
                  width: screenWidth,// Use screen height for the container
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Ellipse.png"),
                      fit: BoxFit.fill,
                      alignment: Alignment.bottomCenter// Adjust the fit mode as needed
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Center(
                              child: Container(
                                padding: EdgeInsets.only(left: 70),
                                child: Image.asset(
                                  "assets/images/home-logo.png",
                                  width: double.infinity, // Adjust the width as needed
                                  height: 0.1 * MediaQuery.of(context).size.height, // Adjust the height as needed
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: Color.fromRGBO(43, 43, 43, 1),
                              child: Icon(
                                Icons.notifications_none_outlined,
                                color: Color.fromRGBO(217, 141, 48, 1), // Set the icon color here
                              ),
                              radius: 0.05 * MediaQuery.of(context).size.width, // Adjust the radius as needed
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "System Status:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14 ,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 2, left: 4),
                              child: Text(
                                "Charging",
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 206, 47, 10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(top: 10.075,bottom: 15 ),
                        child: Stack(
                          children: [
                            Center(
                              child: Container(
                                width: 210,
                                height: 210,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(42, 42, 42, 1),
                                  borderRadius: BorderRadius.circular(105),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                margin: EdgeInsets.only(top: 15),
                                width: 182,
                                height: 182,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(55, 55, 55, 1),
                                  borderRadius: BorderRadius.circular(91),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 25),
                              child: Center(
                                child: ClipOval(
                                  child: TweenAnimationBuilder(
                                    tween: Tween(begin: 0.0, end: 0.5), // Adjust the end value as needed
                                    duration: Duration(seconds: 2), // Adjust the duration as needed
                                    builder: (context, value, child) {
                                      return Container(
                                        width: 160,
                                        height: 160,
                                        color: Colors.transparent,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 0.048 * MediaQuery.of(context).size.width-6,
                                          valueColor: AlwaysStoppedAnimation<Color>(
                                            Color.fromRGBO(217, 141, 48, 1),
                                          ),
                                          // Use the animated value here
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
    
                          ],
    
                        ),
                      ),
    
                    ],
                  ), // Add any child widgets or content you want to display on top of the background image here.
                ),
             Container(
                 width: 390,
                 padding: EdgeInsets.only(top: 20),
                 child: Column(
                   children: [
                     Container(
                       padding: EdgeInsets.only(left: 45),
                       child: Row(
                         children: [
                           Text("Total Voltage",style: TextStyle(
                             color: Color.fromRGBO(255, 189, 89, 1),
                             fontSize: 17,
                             fontWeight: FontWeight.w800
                           ),),
                           Container(padding: EdgeInsets.only(left: 18),child: Text("52.73V",style: TextStyle(
                             color: Colors.white,
                             fontSize: 17,
                             fontWeight: FontWeight.w400
                           ),))
                         ],
                       ),
                     ),
                     Container(
                       padding: EdgeInsets.only(left: 90,top: 3),
                       child: Row(
                         children: [
                           Text("Current",style: TextStyle(
                               color: Color.fromRGBO(255, 189, 89, 1),
                               fontSize: 17,
                               fontWeight: FontWeight.w800
                           ),),
                           Container(padding: EdgeInsets.only(left: 18),child: Text("0A",style: TextStyle(
                               color: Colors.white,
                               fontSize: 17,
                               fontWeight: FontWeight.w400
                           ),))
                         ],
                       ),
                     ),
                     Container(
                       padding: EdgeInsets.only(top: 3,left: 30),
                       child: Row(
                         children: [
                           Text("Rated Capacity",style: TextStyle(
                               color: Color.fromRGBO(255, 189, 89, 1),
                               fontSize: 17,
                               fontWeight: FontWeight.w800
                           ),),
                           Container(padding: EdgeInsets.only(left: 18),child: Text("100AH",style: TextStyle(
                               color: Colors.white,
                               fontSize: 17,
                               fontWeight: FontWeight.w400
                           ),))
                         ],
                       ),
                     ),
                   ],
                 ),
               ),
               SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:18.0),
                  child: Container(
                    width: 400,
                    padding: EdgeInsets.only(left: 27,),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 114,
                          height: 29,
                          child: ElevatedButton(onPressed:(){
                          },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(217, 141, 48, 1),
                                shape:RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9),
                                )
                              ),
                              child: Text("Cell Voltages",style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: SizedBox(
                            width: 97,
                            height: 29,
                            child: ElevatedButton(onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromRGBO(42, 42, 42, 1),
                                    shape:RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9),
                                    )
                                ),
                                child: Text(
                              "Temprature",
                                  style: TextStyle(
                                    color: Color.fromRGBO(84, 79, 79, 1),
                                    fontSize: 9,
                                    fontWeight: FontWeight.w600,
                                  ),
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(42, 42, 42, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 335,
                        height: _isContainerVisible ? 190 : 50, // Adjust the height as needed
                        child: Center(
                          child: Column(
                            children: [
                              Container(
                                width: 300,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(width: 1, color: Colors.white),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Cell Voltages",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: _toggleContainerVisibility,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        child: Icon(
                                          _isContainerVisible
                                              ? Icons.arrow_drop_up_rounded
                                              : Icons.arrow_drop_down_rounded,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (_isContainerVisible) // Conditionally render additional content
                                Container(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "2MV",
                                        style: TextStyle(
                                            color: Color.fromRGBO(255, 189, 89, 1),
                                            fontWeight: FontWeight.w800,
                                            fontSize: 17),
                                      ),
                                      Text(
                                        "3297mV",
                                        style: TextStyle(
                                            color: Color.fromRGBO(255, 189, 89, 1),
                                            fontWeight: FontWeight.w800,
                                            fontSize: 17),
                                      ),
                                      Text(
                                        "3295mV",
                                        style: TextStyle(
                                            color: Color.fromRGBO(255, 189, 89, 1),
                                            fontWeight: FontWeight.w800,
                                            fontSize: 17),
                                      )
                                    ],
                                  ),
                                ),
                              if (_isContainerVisible)
                              Container(
                                width: 280,
                                padding: EdgeInsets.only(right: 20),
                                child: Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                  children: [
                                    Text("Volt Diff",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold
                                    ),),
                                    Text("Max Volt",style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Text("Min volt",style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold
                                    ),)
                                  ],
                                ),
                              ),
                              Container(
    
                              )
                               
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
    
              ],
            ),
          ),
        ),
      ),
    );
  }
}
