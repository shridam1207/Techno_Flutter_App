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
void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDownloader.initialize(
  debug: false // optional: set false to disable printing logs to console
);

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


