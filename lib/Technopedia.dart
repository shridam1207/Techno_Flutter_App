import 'package:flutter/material.dart';

class Technopedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Technopedia'),
      ),
      body: SafeArea(
        child: Center(
          child: Text('Welcome To Technopedia'),
        ),
      ),
    );
  }
}