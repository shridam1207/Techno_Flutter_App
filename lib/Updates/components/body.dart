import 'package:flutter/material.dart';
import 'package:flutter_app_techno_recent/main.dart';
import 'background.dart';
//import 'package:flutter_auth/components/rounded_button.dart';
import '../../constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import './model.dart';
import '../updates.dart';
/*Function abcd() { Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomePage()))
}*/
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
//  final List<String> messages = ["kjsdb","kasdva","uebiva"];
  final List<String> messages = [];


  @override
  void initState(){
    super.initState();
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async{
        print("onMessage: $message");
        final notification = message['notification'];
        setState(() {
          messages.add( notification['body']);
        });
        //Navigator.of(context).push(
          //MaterialPageRoute(builder: (BuildContext context) => Updates()));
      
      },
      onLaunch: (Map<String, dynamic> message) async{
        print("onLaunch: $message");
        Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => Updates()));
      
      },
      onResume: (Map<String, dynamic> message) async{
        print("onResume: $message");
        Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => Updates()));
      
      },  

      
    );
    
    _firebaseMessaging.requestNotificationPermissions(
      const IosNotificationSettings(sound: true, badge: true, alert: true));
  } 


    @override
  Widget build(BuildContext context) => Background(
    child:ListView(
        children: messages.map(buildMessage).toList(),
      )
  );
  Widget buildMessage(String message) => ListTile(
        title: Text(message),
        //subtitle: Text(message.body),
      );
/*
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
          child: Background(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //SizedBox(height: size.height * 0.05),
              Center(
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                    color:Colors.transparent,
                  ),
                  child:ListView.builder(
                    itemCount: messages.length,
                    itemBuilder: (context, position) {
                      return ListTile(
                        leading: Icon(Icons.chevron_right ),
                        title: 
                          Text(messages[position],                     
                            style: TextStyle(
                              fontFamily: 'sniglet',
                            ),
                          ),
                      );
                    },
                  ),
                )
              ),

              Center(
                child: Container(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                  child: Text(
                    '''Look through our repository of past question papers to help you prepare for Technothlon 2020''',
                    style: TextStyle(
                      fontFamily: 'sniglet',
                      //fontWeight: FontWeight.bold
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }

  */

}
