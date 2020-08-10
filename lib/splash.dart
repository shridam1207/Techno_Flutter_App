import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animations/loading_animations.dart';
import 'main.dart';

void main(){
  runApp(MaterialApp(home: SplashScreen(),

  theme: ThemeData(
    fontFamily: 'Circular'
  ),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 5),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomePage())));

    return SplashScreenContent();
  }
}

class SplashScreenContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0, 0),
              end: Alignment(5, 5),
              colors: <Color>[Colors.purple[600],Colors.white],
            )),
        child: Center(
          child: Column(children: <Widget>[
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
              padding: EdgeInsets.only(top: 10.0,bottom: 5.0),
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
