import 'package:flutter/material.dart';

import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

import 'dart:async';
import 'dart:convert';
import 'configuration.dart';
class mains extends StatefulWidget {
  @override
  _CityrepsState createState() => _CityrepsState();
}

class _CityrepsState extends State<mains> {
  String selectedyear = null;

  Set<String> Years = new Set();

  @override
  Widget build(BuildContext context) {
            return Scaffold(
                body: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        "Glimpses About Mains",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: DropdownButtonHideUnderline(
                              child: ButtonTheme(
                                alignedDropdown: true,
                                child: DropdownButton<String>(
                                  value: selectedyear,
                                  iconSize: 30,
                                  icon: (null),
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16,
                                  ),
                                  hint: Text('Select Year'),
                                  items: <String>['2018', '2017', '2016', '2015','2014'].map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (String newValue) {
                                    setState(() {
                                      selectedyear = newValue;
                                      print(selectedyear);
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
//                    SizedBox(
//                      height: 15,
//                    ),
                    Container(
                        child: Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: mains_events.length,
                              itemBuilder: (BuildContext context, int index) {
                                if (mains_events[index]['Year'] != null) {
                                  if (mains_events[index]['Year'] == selectedyear) {
                                    return Container(
                                        constraints: BoxConstraints(),
                                        padding: EdgeInsets.all(25),
                                        margin: EdgeInsets.fromLTRB(
                                            15, 60, 15, 60),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 10,
                                              offset: Offset(6, 6),
                                              color: Color(0xff333333)
                                                  .withOpacity(1),
                                              spreadRadius: -1,
                                            )
                                          ],
                                          borderRadius:
                                          BorderRadius.circular(15.0),
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                mains_events[index]['Name'] ,
                                                style: TextStyle(
                                                  //ontWeight: FontWeight.bold,
                                                    fontSize: 25),
                                              ),
                                              Center(
                                                child: Container(
                                                  child: Text(
                                                    mains_events[index]['About'] ,
                                                    style: TextStyle(
                                                      //fontWeight: FontWeight.bold
                                                      fontSize: 15,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            ]));
                                  } else {
                                    return Container(
                                      child: SizedBox(
                                        height: 0,
                                      ),
                                    );
                                  }
                                } else {
                                  return Container(
                                    child: SizedBox(
                                      height: 0,
                                    ),
                                  );
                                }
                              }),
                        ))
//                  ],
//                );

  ]));
  }
}

