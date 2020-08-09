import 'package:flutter/material.dart';
import 'package:pet_ui/splash.dart';

import 'drawerScreen.dart';
import 'homeScreen.dart';

<<<<<<< HEAD
//import 'login_page.dart';
//import 'constants.dart';
//import 'AboutUs/about_us.dart';
//import 'Technopedia/technopedia.dart';
//import 'Updates/updates.dart';
//import 'QuickLinks/quick_links.dart';
//import 'ContactUs/contact_us.dart';


//void main(){
//  runApp(MaterialApp(home: HomePage(),
//
//  theme: ThemeData(
//    fontFamily: 'Circular'
//  ),
//  ));
//}

=======
import 'login_page.dart';
import 'constants.dart';
import 'AboutUs/about_us.dart';
import 'Technopedia/technopedia.dart';
import 'Updates/updates.dart';
import 'QuickLinks/quick_links.dart';
import 'ContactUS/contact_us.dart';



void main(){
  runApp(MaterialApp(home: HomePage(),
                     
  theme: ThemeData(
    fontFamily: 'Circular'
  ),
  ));
}
>>>>>>> 455cf9870d5edcebb330447f57f15801f98ed970


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
