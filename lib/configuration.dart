import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'LED/LED.dart';
import 'ContactUs/contact_us.dart';
import 'LogicQ.dart';
import 'QuickLinks/quick_links.dart';
import 'Solutions.dart';
import 'Updates/updates.dart';
import 'package:flutter_app_techno_recent/LogicQ.dart';
import 'package:flutter_app_techno_recent/Solutions.dart';
import 'package:flutter_app_techno_recent/Updates/updates.dart';
import 'AboutUs/about_us.dart';
import 'Technopedia/technopedia.dart';

Color fb_blue = Color.fromRGBO(66, 103 ,178,1);

Color primaryGreen = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0, 10))
];

List<Map> categories = [
  {'name': 'AboutUs', 'iconPath': 'images/AboutUs.png','page':AboutUs()},
  {'name': 'LED', 'iconPath': 'images/LED.png','page':LED()},
  {'name': 'Mains', 'iconPath': 'images/Mains.png','page':AboutUs(),},
  {'name': 'Pedia', 'iconPath': 'images/Pedia.png','page':Technopedia()},
];
List<Map> experiment = [
  {'iconPath': 'images/Experiment1.png'},
  {'iconPath': 'images/Experiment2.png'},
  {'iconPath': 'images/Experiment3.png'},
  {'iconPath': 'images/Experiment4.png'},
  {'iconPath': 'images/Experiment5.png'},
  {'iconPath': 'images/Experiment6.png'},
  {'iconPath': 'images/Experiment7.png'},
  {'iconPath': 'images/Experiment8.png'},
];

List<Map> drawerItems=[
  {
    'icon': Icons.person,
    'title' : 'About Us',
    'page': AboutUs()

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


List<Map> headlist = [
  {'name': 'Aman Bansal', 'iconPath': 'heads_images/Aman_Bansal.jpg','details':'''North Zone
aman.bansal@techniche.org
+91 9755049920''' },
  {'name': 'Vedansh Nehra', 'iconPath': 'heads_images/Vedansh_Nehra.jpg','details':'''West Zone
vedansh@techniche.org
+91 9354020275''' },
  {'name': 'Pooja Bhagat', 'iconPath': 'heads_images/Pooja_Bhagat.jpg','details':'''Central Zone
pooja@techniche.org
+91 8401809075''' },
  {'name': 'Shridam Mahajan', 'iconPath': 'heads_images/Shridam_Mahajan.jpg','details':'''East Zone
shridam@techniche.org
+91 7587817679''' },
  {'name': 'Sai Chandan', 'iconPath': 'heads_images/Sai_Chandan.jpg','details':'''South Zone
chandan@techniche.org
+91 9030267303''' },
];