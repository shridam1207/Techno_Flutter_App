import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_techno_recent/main.dart';
import 'background.dart';
import '../../constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_app_techno_recent/configuration.dart';

class mains extends StatefulWidget {
  @override
  _CityrepsState createState() => _CityrepsState();
}

class _CityrepsState extends State<mains> {
  String selectedyear = null;

  Set<String> Years = new Set();



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Stack(

          children: <Widget>[

            SingleChildScrollView(

              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //SizedBox(height: size.height * 0.05),
                  SizedBox(height: size.height * 0.05),
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


/*            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),*/
                  //SizedBox(height: size.height * 0.05),
                  Center(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Text(
                        "MAINS",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child:Container(
                      padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                      child: Text(
                        '''Technothlon is an international school championship organized by the student fraternity of IIT Guwahati. Technothlon began in 2004 in a small room with an aim to "Inspire Young Minds". Starting on our journey with a participation of 200 students confined to the city of Guwahati, over the past 15 years we have expanded our reach to over 400 cities all over India and various centers abroad. The championship is organized over 2 rounds:

1. Prelims: is the preliminary examination that involves no prerequisites or general knowledge, and students have to rely on their logical and analytical thinking skills alone.

2. Mains: is an event-based competition. The top 50 teams from each squad compete against each other in challenging events designed to test their innovation, creativity, and imagination.''',
                        style: TextStyle(
                          //fontWeight: FontWeight.bold
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),

                  Center(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Text(
                        "Some Glimpses of Mains",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
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
                  Container(height: 450,
                    decoration: BoxDecoration(
                      color:Colors.white,),
                      child: Container(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: mains_events.length,
                            itemBuilder: (BuildContext context, int index) {
                              if (mains_events[index]['Year'] != null) {
                                if (mains_events[index]['Year'] == selectedyear) {
                                  return FlipCard(
                                    direction: FlipDirection.VERTICAL,
                                    front: Container(
                                      width: 400,
                                        margin: EdgeInsets.fromLTRB(
                                            10, 20, 10, 20),
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
                                        child: Container(
                                          width:400,
                                          decoration: new BoxDecoration(
                                            borderRadius: BorderRadius.circular(20.0),
                                            shape: BoxShape.rectangle,
                                            color: const Color(0xff7c94b6),
                                            image: new DecorationImage(
                                              fit: BoxFit.fill ,
                                              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
                                              image: new AssetImage(
                                                  experiment[index]['iconPath'],
                                              ),
                                            ),),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Center(
                                                  child: Text(
                                                    mains_events[index]['Name'] ,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                        fontSize: 25),
                                                  ),
                                                ),
                                              ],
                                          ),
                                        ),
                                    ),
                                    back: Container(
                                      width:400,
                                      constraints: BoxConstraints(),
                                      padding: EdgeInsets.all(25),
                                      margin: EdgeInsets.fromLTRB(
                                          15, 20, 15, 20),
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
                                      child: Container(
                                        height: 450,
                                        width: 400,
                                        decoration: new BoxDecoration(
                                          borderRadius: BorderRadius.circular(20.0),
                                          shape: BoxShape.rectangle,
//                                          color: const Color(0xff7c94b6),
                                          image: new DecorationImage(
                                            fit: BoxFit.fill ,
//                                            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(1), BlendMode.dstATop),
                                            image: new AssetImage(
                                                'images/back.png',
                                            ),
                                          ),),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,

                                          children: <Widget>[
                                            Center(
                                              child: Text(
                                                mains_events[index]['About'] ,
                                                style: TextStyle(
                                                  color: Color(0xff000000),
                                                  fontSize: 20.0,
                                                ),),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }
                              }
                              return Container(
                                child: SizedBox(
                                  height: 0,
                                ),
                              );
                            }
                            ),
                      ),

                  ),],
              ),
            ),
          ]
      ),
    );
  }
}

//
//FlipCard(
//direction: FlipDirection.HORIZONTAL, // default
//front: Material(
//color: Colors.white.withOpacity(0.9),
//borderRadius: BorderRadius.circular(24.0),
//shadowColor: Color(0x802196F3).withOpacity(0.2),
//child: _nameDetailsContainer(),
//),
//back: Material(
//color: Colors.white.withOpacity(0.7),
//borderRadius: BorderRadius.circular(24.0),
//shadowColor: Color(0x802196F3),
//child: _socialContainer(),
//),
//),
//
