import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_ui/ContactUs.dart';
import 'package:pet_ui/LogicQ.dart';
import 'package:pet_ui/QuickLinks.dart';
import 'package:pet_ui/Solutions.dart';
import 'package:pet_ui/Updates.dart';

import 'AboutUs/welcome_screen.dart';
import 'Technopedia.dart';

Color fb_blue = Color.fromRGBO(66, 103 ,178,1);

Color primaryGreen = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0, 10))
];

List<Map> categories = [
  {'name': 'AboutUs', 'iconPath': 'images/AboutUs.png'},
  {'name': 'LED', 'iconPath': 'images/LED.png'},
  {'name': 'Mains', 'iconPath': 'images/Mains.png'},
  {'name': 'Pedia', 'iconPath': 'images/Pedia.png'},
];

List<Map> drawerItems=[
  {
    'icon': Icons.person,
    'title' : 'About Us',
    'page':WelcomeScreen()
  },
  {
    'icon': Icons.computer,
    'title' : 'Technopedia',
    'page':Technopedia()
  },
  {
    'icon': Icons.book,
    'title' : 'Solutions',
    'page':Solutions()
  },
  {
    'icon': Icons.lightbulb_outline,
    'title' : 'LogicQ',
    'page':LogicQ()
  },
  {
    'icon': Icons.contacts,
    'title' : 'Contact Us',
    'page':ContactUs()
  },
  {
    'icon': Icons.update,
    'title' : 'Updates',
    'page':Updates()
  },
  {
    'icon': Icons.link,
    'title' : 'Quick Links',
    'page':QuickLinks()
  },
];