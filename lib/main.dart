import 'package:flutter/material.dart';

import 'drawerScreen.dart';
import 'homeScreen.dart';

import 'login_page.dart';
import 'constants.dart';
import 'AboutUs/about_us.dart';
import 'Technopedia/technopedia.dart';
import 'Updates/updates.dart';
import 'QuickLinks/quick_links.dart';
import 'ContactUS/contact_us.dart';
import 'ContactUs/components/know_your_reps.dart';


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
