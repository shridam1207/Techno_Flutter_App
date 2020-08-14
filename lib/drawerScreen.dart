import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_techno_recent/Developers/developers.dart';

import 'package:flutter_app_techno_recent/configuration.dart';
import '''package:flutter_app_techno_recent/FAQ's/faqs.dart''';
import 'package:flutter_app_techno_recent/Info/info.dart';
//import 'package:flutter_app_techno_recent/AboutUs/welcome_screen.dart';
import 'configuration.dart';
import 'AboutUs/about_us.dart';


class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      padding: EdgeInsets.only(top:50,bottom: 70,left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Image.asset('images/logo.png'),
                backgroundColor: Colors.deepPurple,
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Technothlon',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),

               ],
              )
            ],
          ),

          Column(
            children: drawerItems.map((element) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                splashColor:Colors.red,
                onTap: ()=>{
                  Navigator.push(context, MaterialPageRoute(
                  builder: (context) => element['page']
                  ))
                  },
                child: Row(
                  children: [
                    Icon(element['icon'],color: Colors.white,size: 30,),
                    SizedBox(width: 10,),
                    Text(element['title'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20))
                  ],
                ),
              ),

            )).toList(),
          ),

          Row(
            children: [
              Icon(Icons.question_answer,color: Colors.white,),
              SizedBox(width: 10,),
//              Text('Settings',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                RichText(
                text: TextSpan(
                text: "FAQ's",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {Navigator.push(context, MaterialPageRoute(
                          builder: (context) => faqs()
                          ));
                        },
              ),),
              SizedBox(width: 10,),
              Container(width: 2,height: 20,color: Colors.white,),
              SizedBox(width: 10,),
//              Text('Developers',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
              RichText(
                text: TextSpan(
                  text: "Developers",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Developers()
                      ));
                    },),
                  ),
              SizedBox(width: 10,),
              Container(width: 2,height: 20,color: Colors.white,),
              SizedBox(width: 10,),
              RichText(
                text: TextSpan(
                  text: "Info",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => info()
                      ));
                    },),
              ),


            ],

          )


        ],
      ),

    );
  }
}