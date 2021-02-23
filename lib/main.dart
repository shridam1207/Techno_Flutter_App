import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:flutter_app_technothlon/splash.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
    theme: ThemeData(fontFamily: 'Circular'),
  ));
  // runApp(MyApp());
}

class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  String _message = '';
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  _register() {
    _firebaseMessaging.getToken().then((token) => print(token));
  }

  @override
  void initState() {
    super.initState();
    getMessage();
  }

  void getMessage() {
    _firebaseMessaging.configure(
        onMessage: (Map<String, dynamic> message) async {
      print('on message $message');
      setState(() => _message = message["notification"]["title"]);
    }, onResume: (Map<String, dynamic> message) async {
      print('on resume $message');
      setState(() => _message = message["notification"]["title"]);
    }, onLaunch: (Map<String, dynamic> message) async {
      print('on launch $message');
      setState(() => _message = message["notification"]["title"]);
    });
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => HomePage())));

//     return SplashScreenContent();
//   }
// }
//
// class SplashScreenContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(2, 2),
          colors: <Color>[Colors.deepPurple, Colors.white],
        )),
        child: Center(
          child: Column(children: <Widget>[
            Text("Message: $_message"),
            // OutlineButton(
            //   child: Text("Register My Device"),
            //   onPressed: () {
            //     _register();
            //   },
            // ),
            Padding(
              padding: EdgeInsets.only(top: 200.0),
              child: Image(
                image: AssetImage('images/logo.png'),
                // color: Colors.white,
                height: 120.0,
                width: 120.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
              child: Text(
                'Technothlon',
                style: GoogleFonts.varelaRound(
                    textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                )),
              ),
            ),
            Text(
              'Experience logic like never before!',
              style: GoogleFonts.varelaRound(
                  textStyle: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.normal,
              )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 150.0),
              child: LoadingJumpingLine.circle(
                size: 40,
                backgroundColor: Colors.white,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

// class MyApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _MyAppState();
//   }
// }
//
// class _MyAppState extends State<MyApp> {
//   String _message = '';
//
//   final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
//
//   _register() {
//     _firebaseMessaging.getToken().then((token) => print(token));
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getMessage();
//   }
//
//   void getMessage() {
//     _firebaseMessaging.configure(
//         onMessage: (Map<String, dynamic> message) async {
//       print('on message $message');
//       setState(() => _message = message["notification"]["title"]);
//     }, onResume: (Map<String, dynamic> message) async {
//       print('on resume $message');
//       setState(() => _message = message["notification"]["title"]);
//     }, onLaunch: (Map<String, dynamic> message) async {
//       print('on launch $message');
//       setState(() => _message = message["notification"]["title"]);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text("Message: $_message"),
//                 OutlineButton(
//                   child: Text("Register My Device"),
//                   onPressed: () {
//                     _register();
//                   },
//                 ),
//                 // Text("Message: $message")
//               ]),
//         ),
//       ),
//     );
//   }
// }
