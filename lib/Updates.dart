import 'package:flutter/material.dart';

class Updates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Updates'),
      ),
      body: SafeArea(
        child: Center(
          child: Text('Welcome To Updates Page'),
        ),
      ),
    );
  }
}