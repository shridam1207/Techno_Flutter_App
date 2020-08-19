import 'package:flutter/material.dart';
//import 'package:flutter_app_techno_recent/ContactUs/components/know_your_reps.dart';
import 'package:flutter_app_techno_recent/homeScreen.dart';
//import 'package:flutter_app_techno_recent/ContactUs/components/know_your_reps.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_app_techno_recent/main.dart';

import 'dart:async';
import 'dart:convert';
import 'background.dart';
import '../../components/rounded_button.dart';
import '../../constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_app_techno_recent/configuration.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  void initState() {
    _getRep();
    super.initState();
  }

  Future<List<Rep>> _getRep() async {
    var data = await rootBundle.loadString('assets/reps.json');
    var jsonData = json.decode(data);

    List<Rep> reps = [];

    for (var x in jsonData) {
      Rep rep = Rep(x["ï»¿Student Name"], x["Contact"], x["Email"], x["City"],
          x["State"], x["Region"]);
      reps.add(rep);
    }

    return reps;
  }

  Set<String> getStatesList(String selzone, List<Rep> data) {
    Set<String> states = new Set();

    for (var x in data) {
      if (x.zone == selzone) {
        states.add(x.state);
      }
    }

    return states;
  }

  Set<String> getCities(String selzone, String selstate, List<Rep> data) {
    Set<String> cities = new Set();

    for (var x in data) {
      if (x.state == selstate && x.zone == selzone) {
        cities.add(x.city);
      }
    }

    return cities;
  }

  String selectedzone = null;
  String selectedstate = null;
  String selectedcity = null;

  Set<String> zones = new Set();
  Set<String> states = new Set();
  Set<String> cities = new Set();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //SizedBox(height: size.height * 0.05),
            SizedBox(height: size.height * 0.05),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                iconSize: 33.0,
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                      //Navigator.push(context, MaterialPageRoute(
                      // builder: (context) => HomePage()
                },
              ),
            ),

            Hero(
              tag: 'hero',
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 100.0,
                child: Image.asset('assets/images/contact-us.png'),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            /*            SvgPicture.asset(
                        "assets/icons/chat.svg",
                        height: size.height * 0.45,
                      ),*/
            //SizedBox(height: size.height * 0.05),
            Text(
              "Contact Us",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                child: Text(
                  '''Reach out to our City Reps for any queries or doubts
''',
                  style: TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontFamily: 'sniglet',
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Text(
              "Know Your Cityreps",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(height: size.height * 0.03),

            Container(
              height: 500,
              child: FutureBuilder(
                future: _getRep(),
                builder: (BuildContext context, AsyncSnapshot snapshot)
                {
                  if (snapshot.data == null) {
                    return Container(
                      
                        child: Text("Loading..."),
                      
                    );
                  }
                  else
                  {
                    List<Rep> snapshotcopy = [];
                    for (var x in snapshot.data) {
                      snapshotcopy.add(x);
                    }

                    for (var ob in snapshot.data) {
                      zones.add(ob.zone);
                    }

                    return Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
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
                                    splashColor: Colors.teal,
                                    alignedDropdown: true,
                                    child: DropdownButton<String>(
                                      value: selectedzone,
                                      iconSize: 30,
                                      icon: (null),
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 16,
                                      ),
                                      hint: Text('Select Zone'),
                                      onChanged: (String newValue) {
                                        setState(() {
                                          selectedzone = newValue;
                                          states = getStatesList(
                                              selectedzone, snapshotcopy);
                                          selectedstate = null;
                                          selectedcity = null;
                                          cities = new Set();
                                          print(selectedzone);
                                        });
                                      },
                                      items: zones.map((item) {
                                            return new DropdownMenuItem(
                                              child: new Text(item),
                                              value: item,
                                            );
                                          })?.toList() ??
                                          [],
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
                                      value: selectedstate,
                                      iconSize: 30,
                                      icon: (null),
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 16,
                                      ),
                                      hint: Text('Select State'),
                                      onChanged: (String newValue) {
                                        setState(() {
                                          selectedstate = newValue;
                                          cities = getCities(selectedzone,
                                              selectedstate, snapshotcopy);
                                          selectedcity = null;
                                          print(selectedstate);
                                        });
                                      },
                                      items: states.map((item) {
                                            return new DropdownMenuItem(
                                              child: new Text(item),
                                              value: item,
                                            );
                                          })?.toList() ??
                                          [],
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
                                      value: selectedcity,
                                      iconSize: 30,
                                      icon: (null),
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 16,
                                      ),
                                      hint: Text('Select City'),
                                      onChanged: (String newValue) {
                                        setState(() {
                                          selectedcity = newValue;
                                          print(selectedcity);
                                        });
                                      },
                                      items: cities.map((item) {
                                            return new DropdownMenuItem(
                                              child: new Text(item),
                                              value: item,
                                            );
                                          })?.toList() ??
                                          [],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data.length,
                              itemBuilder: (BuildContext context, int index) {
                                if (snapshot.data[index].city != null) {
                                  if (snapshot.data[index].city == selectedcity) {
                                    return Center(
                                      child: Container(
                                          child: Container(
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
                                                      snapshot.data[index].name,
                                                      style: TextStyle(
                                                          //ontWeight: FontWeight.bold,
                                                          fontSize: 25),
                                                    ),
                                                    Center(
                                                      child: Container(
                                                        child: Text(
                                                          snapshot.data[index].contact
                                                              .toString(),
                                                          style: TextStyle(
                                                            //fontWeight: FontWeight.bold
                                                            fontSize: 15,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ),
                                                    ),
                                                    Center(
                                                      child: Container(
                                                        child: Text(
                                                          snapshot.data[index].email,
                                                          style: TextStyle(
                                                            //fontWeight: FontWeight.bold
                                                            fontSize: 15,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ),
                                                    ),
                                                  ])),
                                            
                                        ),
                                    );
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
                        )),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    );
                  }
                }
                ),
            ),
            
            
            Text(
              "Meet the heads",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(height: size.height * 0.03),

            Container(
              height: 600,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: headlist.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.fromLTRB(20, 10, 25, 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  offset: Offset(6, 6),
                                  color: Color(0xff333333).withOpacity(1),
                                  spreadRadius: -1,
                                )
                              ],
                              borderRadius: BorderRadius.circular(50.0),
                              border: Border.all(
                                color: Colors.white,
                                width: 1.0,
                              ),
                            ),
                            child: Column(children: [
//
                              Padding(
                                padding: EdgeInsets.all(16.0),
                                child: CircleAvatar(
                                  radius: 110.0,
                                  backgroundColor: Colors.transparent,
                                  backgroundImage:
                                      AssetImage(headlist[index]['iconPath']),
                                ),
                              ),
//                                ),
                              Text(
                                headlist[index]['name'],
                                style: TextStyle(
                                    //ontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                              Center(
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                                  child: Text(
                                    headlist[index]['details'],
                                    style: TextStyle(
                                      //fontWeight: FontWeight.bold
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ])),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Rep {
  String name;
  int contact;
  String email;
  String city;
  String state;
  String zone;

  Rep(this.name, this.contact, this.email, this.city, this.state, this.zone);
}
