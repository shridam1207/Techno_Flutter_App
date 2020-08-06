import 'package:flutter/material.dart';

import 'drawerScreen.dart';
import 'homeScreen.dart';

import 'login_page.dart';
import 'AboutUs/about_us.dart';
import 'constants.dart';
import 'Technopedia/technopedia.dart';


void main(){
  runApp(MaterialApp(home: HomePage(),
  theme: ThemeData(
    fontFamily: 'Circular'
  ),
  ));
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          HomeScreen(),


        ],
      ),

    );
  }
}
