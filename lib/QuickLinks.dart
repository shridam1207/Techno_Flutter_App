import 'package:flutter/material.dart';

class QuickLinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quick Links'),
      ),
      body: SafeArea(
        child: Center(
          child: Text('Welcome To Quick Links Page'),
        ),
      ),
    );
  }
}