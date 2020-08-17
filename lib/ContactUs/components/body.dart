import 'package:flutter/material.dart';
import 'package:flutter_app_techno_recent/ContactUs/components/know_your_reps.dart';
import 'package:flutter_app_techno_recent/homeScreen.dart';
import 'package:flutter_app_techno_recent/ContactUs/components/know_your_reps.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

import 'dart:async';
import 'dart:convert';
import 'background.dart';
import '../../components/rounded_button.dart';
import '../../constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_app_techno_recent/configuration.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            //SizedBox(height: size.height * 0.05),
            SizedBox(height: size.height * 0.05),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                iconSize: 33.0,
                icon: Icon(Icons.arrow_back_ios  ),
                onPressed: (){  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => HomeScreen()
                ));},
              ),
            ),

            Hero(
              tag:'hero',
              child: CircleAvatar(

                backgroundColor: Colors.transparent,
                radius: 100.0,
                child: Image.asset('assets/images/contact-us.png'),
              ),

            ),
            SizedBox(height: size.height * 0.05),
            /*            SvgPicture.asset(
                        "assets/icons/chat.svg",
                        height: size.height * 0.45,
                      ),*/
            //SizedBox(height: size.height * 0.05),
            Text(
              "Contact Us",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40
              ),
            ),
            Center(
              child:Container(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                child: Text(
                  '''Reach out to our City Reps for any queries or doubts
''',
                  style: TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontFamily: 'sniglet',
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Text(
              "Know Your Cityreps",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),
            ),
            SizedBox(height: size.height * 0.03),
            //Cityreps(),




            Text(
              "Meet the heads",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),
            ),
            SizedBox(height: size.height * 0.03),



            Container(height: 600,
              decoration: BoxDecoration(
                color:Colors.transparent,),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:headlist.length,
                itemBuilder: (context,index){
                  return Container(
                    child: Column(
                      children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.fromLTRB(20, 10,25,10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  offset: Offset(6, 6),
                                  color: Color(0xff333333).withOpacity(1),
                                  spreadRadius: -1,
                                )
                              ],
                              borderRadius: BorderRadius.circular(50.0),
                              border: Border.all(
                                color: Colors.white,
                                width: 1.0,
                              ),

                            ),
                            child:Column(
                                children: [
//                              
                                  Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child : CircleAvatar(
                                      radius: 110.0,
                                      backgroundColor: Colors.transparent,
                                      backgroundImage: AssetImage(headlist[index]['iconPath']),
                                    ),
                                  ),
//                                ),
                                  Text(
                                    headlist[index]['name'],
                                    style: TextStyle(
                                      //ontWeight: FontWeight.bold,
                                        fontSize: 30
                                    ),
                                  ),
                                  Center(
                                    child:Container(
                                      padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                                      child: Text(
                                        headlist[index]['details'],
                                        style: TextStyle(
                                          //fontWeight: FontWeight.bold
                                          fontSize: 18,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ]
                            )
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),


          ],
        ),
      ),
    );
  }
}