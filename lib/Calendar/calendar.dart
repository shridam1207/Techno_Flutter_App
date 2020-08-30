import 'package:flutter/material.dart';
import 'package:flutter_app_technothlon/Calendar/components/body.dart';
import 'components/background.dart';
import 'package:flutter_app_technothlon/homeScreen.dart';
//import 'package:flutter_auth/Screens/Welcome/components/body.dart';


class Calendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(),
    );
  }
}
