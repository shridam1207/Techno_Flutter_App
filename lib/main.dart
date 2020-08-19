import 'package:flutter/material.dart';
import "splash.dart";
import 'drawerScreen.dart';
import 'homeScreen.dart';


import 'login_page.dart';
import 'constants.dart';
import 'AboutUs/about_us.dart';
import 'Technopedia/technopedia.dart';
import 'Updates/updates.dart';
import 'QuickLinks/quick_links.dart';
import 'ContactUs/contact_us.dart';


import 'ContactUs/components/know_your_reps.dart';
import 'Solutions/solutions.dart';
import 'package:flutter_downloader/flutter_downloader.dart';


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


