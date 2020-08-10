import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_techno_recent/configuration.dart';
import 'package:flutter_app_techno_recent/screen2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(isDrawerOpen ? 80 : 0.0),
          ),
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  color:Colors.purpleAccent[700],
                  borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 20.0),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                isDrawerOpen ? IconButton(
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
                                Text('Home',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ],
                        ),
                        Column(
                            children:[
                              Row(
                                children: [
                                  IconButton(icon: Icon(Icons.notifications), color:Colors.white,onPressed: () {
                                    print('clicked');
                                  },),
                                  IconButton(icon: Icon(Icons.calendar_today), color:Colors.white,onPressed: () {
                                    print('clicked');
                                  },),
                                ],
                              ),

                            ]
                          //Text('Active Status',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),

                        ),
                      ],
                    ),
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
                    Container(height: 225,
                      width: 700,
                      decoration: BoxDecoration(
//                        borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                      ),
                      child:  SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(15, 10,15,10),
                              child: YoutubePlayer(
                                controller: _controller,
                                showVideoProgressIndicator: true,
                              ),
                                height: 175,
                                width: 375,
                              ),


                          ],
                        ),
                        ),
                      ),

                    Container(height: 225,
                      decoration: BoxDecoration(
                        color:Colors.white,),
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
                                  child: Image.asset(categories[index]['iconPath'],
                                    height: 150,
                                    width: 250,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },


                      ),
                    ),
//                    Container(height: 300,
//                      width: 700,
//                      decoration: BoxDecoration(
//                        color:Colors.white,),
//                      child:  SingleChildScrollView(
//                        child: Column(
//                          children: <Widget>[
//
//                            Container(
//                              height: 200,
//                              width:300,
//                              child: YoutubePlayer(
//                                controller: _controller,
//                                showVideoProgressIndicator: true,
//                              ),
//                            ),
//
//                          ],
//                        ),
//                      ),
//                      ),

//                    Container(height: 60,
//                      width: 425,
//                      decoration: BoxDecoration(
//                        color:Colors.white,
//                      ),
//                      child: Column(
//                        crossAxisAlignment: CrossAxisAlignment.center,
//                        children: [
//                          FloatingActionButton(
//                            backgroundColor: Colors.deepPurple,
//                            elevation: 0,
//                            onPressed: () {
//                              print('Technothlon Logo');
//                            },
//                            child: Image(
//                              image: AssetImage('images/logo.png'),
//                              width: 50,
//                              height: 50,
//                              color: Colors.white,
//                            ),
//                          ),
////                                BottomAppBar(
////                                  clipBehavior: Clip.antiAlias,
////                                  shape: CircularNotchedRectangle(
////                                  ),
////                                  child: SizedBox(
////                                    height: 60,
////                                    child: Material(
////                                      child: TabBar(
////                                        indicatorColor: Colors.lightBlueAccent[700],
////                                        labelColor: Colors.lightBlueAccent[700],
////                                        labelStyle: GoogleFonts.varelaRound(
////                                          fontWeight: FontWeight.bold
////                                          ,
////                                        ),
////                                        tabs: <Widget>[
////                                          new Tab(
////                                            text: 'Login',
////                                          ),
////                                          new Tab(
////                                            text: 'Register',
////                                          ),
////
////
////                                        ],
////                                      ),
////                                    ),
////                                  ),
////                                  ),
//                        ],
//                      ),
//                    ),
//                    Container(height: 80,
//                      decoration: BoxDecoration(
////                        borderRadius: BorderRadius.Circular(isDrawerOpen ? 40 : 0.0),
//                        color: Colors.purple,
//                      ),
//                      child: DefaultTabController(
//                        length: 2,
//                        child: SizedBox(
//                          height: 2,
//                          child: BottomAppBar(
//                            clipBehavior: Clip.antiAlias,
//                            shape: CircularNotchedRectangle(
//                            ),
//                            child: SizedBox(
//                              width: double.infinity,
//                              height: 20.0,
//                              child: new TabBar(
//                                indicatorColor: Colors.purpleAccent[700],
//                                labelColor: Colors.purpleAccent[700],
//                                labelStyle: GoogleFonts.varelaRound(
//                                  fontWeight: FontWeight.bold,
//                                ),
//                                tabs: <Widget>[
//                                  new Tab(
//                                    text: 'Login',
//                                  ),
//                                  new Tab(
//                                    text: 'Register',
//                                  ),
//
//
//                                ],
//                              ),
//                            ),
//                          ),
//                        ),
//                      ),
//                    ),



                  ],
                ),
              ),
            ),
        );
  }
}