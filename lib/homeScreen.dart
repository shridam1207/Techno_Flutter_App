import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_techno_recent/configuration.dart';
//import 'package:flutter_app_techno_recent/developers.dart';
//import 'package:flutter_app_techno_recent/screen2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;


  String videoURL = "https://youtu.be/UsucYJ8eiVM";
  YoutubePlayerController _controller;


  @override
  void initState() {

    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videoURL)
    );

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return
         AnimatedContainer(
          transform: Matrix4.translationValues(xOffset, yOffset, 0)
            ..scale(scaleFactor)
            ..rotateY(isDrawerOpen ? -0.5 : 0),
          duration: Duration(milliseconds: 250),
            child: DefaultTabController(
              length:2,
              child: Scaffold(
                  backgroundColor: Colors.yellow[700],
                  appBar: AppBar(
                    leading: isDrawerOpen ? IconButton(
                      icon: Icon(Icons.arrow_back_ios),color:Colors.white,
                                      onPressed: () {
                                        setState(() {
                                          xOffset = 0;
                                          yOffset = 0;
                                          scaleFactor = 1;
                                          isDrawerOpen = false;
                                        });
                                      },

                                    ) : IconButton(
                                        icon: Icon(Icons.menu),color:Colors.white,
                                        onPressed: () {
                                          setState(() {
                                            xOffset = 230;
                                            yOffset = 150;
                                            scaleFactor = 0.6;
                                            isDrawerOpen = true;
                                          });
                                        }),
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    title: Text('HOME',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white)),
                    actions: <Widget>[
                      IconButton(
                        icon: Icon(Icons.notifications),
                        onPressed: () {},
                        color: Colors.white,
                      ),
                      IconButton(
                        icon: Icon(Icons.calendar_today),
                        onPressed: () {},
                        color: Colors.white,
                      )
                    ],
                  ),
                  body: ListView(children: [
                    Stack(children: [
                      Container(
                          height: MediaQuery.of(context).size.height -155,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.transparent),
                      Container(height: 120,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: categories.length,
                            itemBuilder: (context,index){
                              return Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25.0),
                                          bottomRight: Radius.circular(25.0))),
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap:()=>{
                                      Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => categories[index]['page']
                                      ))
                              },
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(10,10,10,0),
                                        margin: EdgeInsets.only(left: 25),
                                        child: Container(
                                          child: Image.asset(categories[index]['iconPath'],
                                              height: 50,
                                              width: 50),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin:EdgeInsets.fromLTRB(25,10,0,10),
                                      child: Text(categories[index]['name'], style: TextStyle(color: Colors.white,
                                          fontWeight: FontWeight.bold),),
                                    )
                                  ],
                                ),
                              );
                            },

                          ),
                        ),
                      Positioned(
                          top: 100.0,
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(60.0),
                                    topRight: Radius.circular(60.0),
                                  ),
                                  color: Colors.white),
                                  height: MediaQuery.of(context).size.height - 100.0,
                                  width: MediaQuery.of(context).size.width,
                        ),
                          ),
                      Positioned(
                        top: 130.0,
                        right:128,
                        child: Container(
                          child: Text('WHO ARE WE?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.purple),
                            textAlign: TextAlign.center,

                          ),

                        ),
                      ),

                      Positioned(
                          top:170,
                          left: (MediaQuery.of(context).size.width / 2) -150,
                        child:  SingleChildScrollView(
                          child: Column(
                            children: <Widget>[

                              Container(
                                height: 150,
                                width:300,
                                child: YoutubePlayer(
                                  controller: _controller,
                                  showVideoProgressIndicator: true,
                                ),
                              ),

                            ],
                          ),
                        ),),
                      Positioned(
                        top: 360.0,
                        right: 153,
                      child: Container(
                        child: Text('EXPLORE',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.purple),
                          textAlign: TextAlign.center,

                        ),
                      ),

                      ),
                      Positioned(
                          top: 400.0,
                          left: 25.0,
                          right: 25.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    height: 200.0,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: categories.length,
                                      itemBuilder: (context,index){
                                        return Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.all(10),
                                                margin: EdgeInsets.fromLTRB(15, 10,15,10),
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
                                                  borderRadius: BorderRadius.circular(20.0),
                                                  border: Border.all(
                                                    color: Colors.white,
                                                    width: 1.0,
                                                  ),

                                                ),
                                                child: Image(image: AssetImage('images/logo.png'),
                                                  height: 150,
                                                  width: 250,
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },


                                    ),
                                  )
                                ],
                              ),
//
//                            SizedBox(height: 20.0),
//                            Padding(
//                              padding: EdgeInsets.only(bottom:5.0),
//                              child: Container(
//                                decoration: BoxDecoration(
//                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0), bottomLeft: Radius.circular(25.0), bottomRight: Radius.circular(25.0)),
//                                    color: Colors.black
//                                ),
//                                height: 50.0,
//                                child: Center(
//                                  child: Text(
//                                      '\$52.00',
//                                      style: TextStyle(
//                                          color: Colors.white,
//                                          fontFamily: 'Montserrat'
//                                      )
//                                  ),
//                                ),
//                              ),
//                            )
//                          ],
//                        ))
                      )])
                      ])
//              body: SingleChildScrollView(
//                child: Container(
//                  decoration: BoxDecoration(
//                    color:Colors.purpleAccent[700],
//                    borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 20.0),
//                  ),
//                  child: Column(
//                    children: [
//                      SizedBox(
//                        height: 30,
//                      ),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: [
//                          Column(
//                            children: [
//                              Row(
//                                children: [
//                                  isDrawerOpen ? IconButton(
//                                    icon: Icon(Icons.arrow_back_ios),color:Colors.white,
//                                    onPressed: () {
//                                      setState(() {
//                                        xOffset = 0;
//                                        yOffset = 0;
//                                        scaleFactor = 1;
//                                        isDrawerOpen = false;
//                                      });
//                                    },
//
//                                  ) : IconButton(
//                                      icon: Icon(Icons.menu),color:Colors.white,
//                                      onPressed: () {
//                                        setState(() {
//                                          xOffset = 230;
//                                          yOffset = 150;
//                                          scaleFactor = 0.6;
//                                          isDrawerOpen = true;
//                                        });
//                                      }),
//                                  Text('Home',
//                                    textAlign: TextAlign.center,
//                                    style: TextStyle(color: Colors.white,
//                                        fontSize: 25,
//                                        fontWeight: FontWeight.bold),),
//                                ],
//                              ),
//                            ],
//                          ),
//                          Column(
//                              children:[
//                                Row(
//                                  children: [
//                                    IconButton(icon: Icon(Icons.notifications), color:Colors.white,onPressed: () {
//                                      print('clicked');
//                                    },),
//                                    IconButton(icon: Icon(Icons.calendar_today), color:Colors.white,onPressed: () {
//                                      print('clicked');
//                                    },),
//                                  ],
//                                ),
//
//                              ]
//                            //Text('Active Status',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
//
//                          ),
//                        ],
//                      ),
//                      Container(height: 120,
//                        child: ListView.builder(
//                          scrollDirection: Axis.horizontal,
//                          itemCount: categories.length,
//                          itemBuilder: (context,index){
//                            return Container(
//                                decoration: BoxDecoration(
//                                    shape: BoxShape.rectangle,
//                                    borderRadius: BorderRadius.only(
//                                        topLeft: Radius.circular(25.0),
//                                        bottomRight: Radius.circular(25.0))),
//                              child: Column(
//                                children: [
//                                  InkWell(
//                                    onTap:()=>{
//                            Navigator.push(context, MaterialPageRoute(
//                            builder: (context) => categories[index]['page']
//                            ))
//                            },
//                                    child: Container(
//                                      padding: EdgeInsets.fromLTRB(10,10,10,0),
//                                      margin: EdgeInsets.only(left: 25),
//                                      child: Container(
//                                        child: Image.asset(categories[index]['iconPath'],
//                                            height: 50,
//                                            width: 50),
//                                      ),
//                                    ),
//                                  ),
//                                  Container(
//                                    margin:EdgeInsets.fromLTRB(25,10,0,10),
//                                    child: Text(categories[index]['name'], style: TextStyle(color: Colors.white,
//                                        fontWeight: FontWeight.bold),),
//                                  )
//                                ],
//                              ),
//                            );
//                          },
//
//                        ),
//                      ),
//                      Container(height: 225,
//                        width: 700,
//                        child:  SingleChildScrollView(
//                          child: Column(
//                            children: <Widget>[
//                              Container(
//                                padding: EdgeInsets.all(10),
//                                margin: EdgeInsets.fromLTRB(15, 10,15,10),
//                                child: YoutubePlayer(
//                                  controller: _controller,
//                                  showVideoProgressIndicator: true,
//                                ),
//                                  height: 175,
//                                  width: 375,
//                                ),
//                            ],
//                          ),
//                          ),
//                        ),
//
//                      Container(height: 225,
//                        decoration: BoxDecoration(
//                          color:Colors.white,),
//                        child: ListView.builder(
//                          scrollDirection: Axis.horizontal,
//                          itemCount: categories.length,
//                          itemBuilder: (context,index){
//                            return Container(
//                              child: Column(
//                                children: [
//                                  Container(
//                                    padding: EdgeInsets.all(10),
//                                    margin: EdgeInsets.fromLTRB(15, 10,15,10),
//                                    decoration: BoxDecoration(
//                                      color: Colors.white,
//                                      boxShadow: [
//                                        BoxShadow(
//                                          blurRadius: 10,
//                                          offset: Offset(6, 6),
//                                          color: Color(0xff333333).withOpacity(1),
//                                          spreadRadius: -1,
//                                        )
//                                      ],
//                                      borderRadius: BorderRadius.circular(20.0),
//                                      border: Border.all(
//                                        color: Colors.white,
//                                        width: 1.0,
//                                      ),
//
//                                    ),
//                                    child: Image.asset(categories[index]['iconPath'],
//                                      height: 150,
//                                      width: 250,
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            );
//                          },
//
//
//                        ),
//                      ),
//
////              appBar: AppBar(
////                leading: IconButton(
////                  onPressed: () {
////                    Navigator.of(context).pop();
////                  },
////                  icon: Icon(Icons.arrow_back_ios),
////                  color: Colors.white,
////                ),
////                backgroundColor: Colors.transparent,
////                elevation: 0.0,
////                title: Text('Details',
////                    style: TextStyle(
////                        fontFamily: 'Montserrat',
////                        fontSize: 18.0,
////                        color: Colors.white)),
////                centerTitle: true,
////                actions: <Widget>[
////                  IconButton(
////                    icon: Icon(Icons.more_horiz),
////                    onPressed: () {},
////                    color: Colors.white,
////                  )
//                ],
//              ),
//            ),
//        ),
//    )
                ,floatingActionButtonLocation: FloatingActionButtonLocation
                .centerDocked,
                floatingActionButton: FloatingActionButton(
                  child: Center(
                    child: Image(
                      image: AssetImage('images/logo.png'),
                      width: 40,
                      height: 40,
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.purple,
                  elevation: 20.0,
                  onPressed: () {
                    print('Technothlon Logo');
                  },
                ),
                bottomNavigationBar: BottomAppBar(
                  clipBehavior: Clip.antiAlias,
                  shape: CircularNotchedRectangle(
                  ),
                  child: Material(
                    child: SizedBox(
                      width: double.infinity,
                      height: 50.0,
                      child: new TabBar(
                        indicatorColor: Colors.purple,
                        labelColor: Colors.purple,
                        labelStyle: GoogleFonts.varelaRound(
                          fontWeight: FontWeight.bold
                          ,
                        ),
                        tabs: <Widget>[
                          new Tab(
                            text: 'Login',
                          ),
                          new Tab(
                            text: 'Register',
                          ),


                        ],
                      ),
                    ),
                  ),
                ),
                ),
            )
              );
              }

//  Widget _buildInfoCard(String cardTitle, String info, String unit) {
//    return InkWell(
//        onTap: () {
//          selectCard(cardTitle);
//        },
//        child: AnimatedContainer(
//            duration: Duration(milliseconds: 500),
//            curve: Curves.easeIn,
//            decoration: BoxDecoration(
//              borderRadius: BorderRadius.circular(10.0),
//              color: cardTitle == selectedCard ? Color(0xFF7A9BEE) : Colors.white,
//              border: Border.all(
//                  color: cardTitle == selectedCard ?
//                  Colors.transparent :
//                  Colors.grey.withOpacity(0.3),
//                  style: BorderStyle.solid,
//                  width: 0.75
//              ),
//
//            ),
//            height: 100.0,
//            width: 100.0,
//            child: Column(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: [
//                  Padding(
//                    padding: const EdgeInsets.only(top: 8.0, left: 15.0),
//                    child: Text(cardTitle,
//                        style: TextStyle(
//                          fontFamily: 'Montserrat',
//                          fontSize: 12.0,
//                          color:
//                          cardTitle == selectedCard ? Colors.white : Colors.grey.withOpacity(0.7),
//                        )),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.only(left: 15.0, bottom: 8.0),
//                    child: Column(
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: <Widget>[
//                        Text(info,
//                            style: TextStyle(
//                                fontFamily: 'Montserrat',
//                                fontSize: 14.0,
//                                color: cardTitle == selectedCard
//                                    ? Colors.white
//                                    : Colors.black,
//                                fontWeight: FontWeight.bold)),
//                        Text(unit,
//                            style: TextStyle(
//                              fontFamily: 'Montserrat',
//                              fontSize: 12.0,
//                              color: cardTitle == selectedCard
//                                  ? Colors.white
//                                  : Colors.black,
//                            ))
//                      ],
//                    ),
//                  )
//                ]
//            )
//        )
//    );
//  }
//
//  selectCard(cardTitle) {
//    setState(() {
//      selectedCard = cardTitle;
//    });
//  }
}

