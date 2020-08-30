import 'package:flutter/material.dart';
import 'package:flutter_app_technothlon/main.dart';
import 'dart:async' show Future;
//import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_app_technothlon/main.dart';

import 'dart:async';
import 'background.dart';
//import '../../components/rounded_button.dart';
//import '../../constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_app_technothlon/configuration.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
    CalendarController _controller;

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = CalendarController();
  }


  @override
  Widget build(BuildContext context) {
   

 

    return Background(

      child: Column(
        
        children: <Widget>[
           SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Row(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    iconSize: 33.0,
                    icon: Icon(Icons.arrow_back_ios  ),
                    onPressed: (){  Navigator.push(context, MaterialPageRoute(
                        builder: (context) => HomePage()
                    ));},
                  ),
                ),
                
              ],
            ),

         
        SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //SizedBox(height: size.height * 0.05),
           SizedBox(
             height: MediaQuery.of(context).size.height*0.05,
           ),
            TableCalendar(
              
              initialCalendarFormat: CalendarFormat.month,
              calendarStyle: CalendarStyle(
                  todayColor: Colors.orange,
                  selectedColor: Theme.of(context).primaryColor,
                  todayStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.white)),
              headerStyle: HeaderStyle(
                rightChevronIcon: Icon(Icons.arrow_right),
                leftChevronIcon: Icon(Icons.arrow_left),
                centerHeaderTitle: true,
                formatButtonDecoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                formatButtonTextStyle: TextStyle(color: Colors.white),
                formatButtonShowsNext: false,
              ),
              //startingDayOfWeek: StartingDayOfWeek.monday,
              calendarController: _controller,
            )


          ],
        ),
      ),
        ]
    ),
    );
  }
}  



  

  