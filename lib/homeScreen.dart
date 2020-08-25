import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_techno_recent/configuration.dart';
import 'package:flutter_app_techno_recent/constants.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

//import 'package:flutter_app_techno_recent/developers.dart';
//import 'package:flutter_app_techno_recent/screen2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Calendar/calendar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int photoIndex = 0;
  int photoIndex_theme = 0;

  var photos = [
    'assets/poster.jpg',
    'assets/poster1.jpg',
  ];
  var photos_theme = [
    'assets/theme_hauts.jpg',
    'assets/theme_juniors.jpg',
  ];

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  String videoURL = "https://youtu.be/UsucYJ8eiVM";
  YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videoURL));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(scaleFactor)
          ..rotateY(isDrawerOpen ? -0.5 : 0),
        duration: Duration(milliseconds: 250),
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: topmenu3,
            appBar: AppBar(
              leading: isDrawerOpen
                  ? IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                      onPressed: () {
                        setState(() {
                          xOffset = 0;
                          yOffset = 0;
                          scaleFactor = 1;
                          isDrawerOpen = false;
                        });
                      },
                    )
                  : IconButton(
                      icon: Icon(Icons.menu),
                      color: Colors.white,
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Calendar(),
                        ));
                  },
                  color: Colors.white,
                )
              ],
            ),
            body: ListView(children: [
              Stack(children: [
                Container(
                    height: MediaQuery.of(context).size.height * 2.18,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.transparent),
                Container(
                  height: MediaQuery.of(context).size.height * 0.22,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25.0),
                                bottomRight: Radius.circular(25.0))),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            categories[index]['page']))
                              },
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    MediaQuery.of(context).size.width * 0.028,
                                    0,
                                    MediaQuery.of(context).size.width * 0.028,
                                    0),
                                margin: EdgeInsets.fromLTRB(
                                    MediaQuery.of(context).size.width * 0.028,
                                    0,
                                    MediaQuery.of(context).size.width * 0.028,
                                    0),
                                child: Container(
                                  child: Image.asset(
                                      categories[index]['iconPath'],
                                      height: 80,
                                      width: MediaQuery.of(context).size.width *
                                          0.18),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  MediaQuery.of(context).size.width * 0.028,
                                  0,
                                  MediaQuery.of(context).size.width * 0.028,
                                  0),
                              // margin:EdgeInsets.fromLTRB(25,10,0,10),
                              child: Text(
                                categories[index]['name'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.16,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white),
                    height: MediaQuery.of(context).size.height * 2.2,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Positioned(
                  width: MediaQuery.of(context).size.width,
                  top: MediaQuery.of(context).size.height * 0.195,
                  //right:128,
                  child: Center(
                    child: Container(
                      child: Text(
                        'TECHNO 2020',
                        style: TextStyle(
                            fontSize: 35.0,
                            fontFamily:'CircularAir-Light' ,
                            color: Colors.purple),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.25,
                  left: 10.0,
                  right: 10.0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    child: Swiper(
//                            curve: Curves.easeIn,
                      itemCount: 2,
                      itemBuilder: (BuildContext context, int index) {
                        return ClipRRect(
//                                  borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage(photos[index]),
                              fit: BoxFit.cover,
                              width: 1000,
                            ));
                      },
                      viewportFraction: 1,
                      scale: 1,
                      pagination: SwiperPagination(),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.84,
                  //right: 153,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    child: Text(
                      'CURTAIN RAISER',
                      style: TextStyle(
                          fontFamily:'CircularAir-Light' ,
                          fontSize: 35.0,
                          color: Colors.purple),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.9,
                  //left: (MediaQuery.of(context).size.width / 2) -150,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: 300,
                          child: YoutubePlayer(
                            controller: _controller,
                            showVideoProgressIndicator: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 1.2,
                  //right: 153,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    child: Text(
                      'EXPLORE',
                      style: TextStyle(
                          fontFamily:'CircularAir-Light' ,
                          fontSize: 35.0,
                          color: Colors.purple),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                Positioned(
                  top: MediaQuery.of(context).size.height * 1.25,
                  left: 25.0,
                  right: 25.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categories.length,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    margin: EdgeInsets.fromLTRB(0, 10, 15, 10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 10,
                                          offset: Offset(6, 6),
                                          color:
                                              Color(0xff333333).withOpacity(1),
                                          spreadRadius: -1,
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(20.0),
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Image(
                                      image: AssetImage('images/logo.png'),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.18,
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
                ),


                Positioned(
                  top: MediaQuery.of(context).size.height * 1.565,
                  //right: 153,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    child: Text(
                      'THEME',
                      style: TextStyle(
                          fontFamily:'CircularAir-Light' ,
                          fontSize: 35.0,
                          color: Colors.purple),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 1.6,
                  left: 10.0,
                  right: 10.0,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Swiper(
                      curve: Curves.easeIn,
                      itemCount: 2,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: MediaQuery.of(context).size.width * 0.5,
                          margin: EdgeInsets.fromLTRB(0, 10, 15, 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 20,
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
                            image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new AssetImage(
                                photos_theme[index],
                              ),
                            ),
                          ),
//                                child: Container(
//                                  child: ClipRRect(
//                                      borderRadius: BorderRadius.circular(10),
//                                      child: Image(
//                                        image: AssetImage(photos_theme[index]),
//                                        fit: BoxFit.cover,
//                                        height: MediaQuery.of(context).size.height*0.1,
//                                        width: 1000,
//                                      )),
//                                ),
                        );
                      },
                      viewportFraction: 0.8,
                      scale: 0.9,
                      pagination: SwiperPagination(),
                    ),
                  ),
                ),
              ])
            ]),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              child: Center(
                child: Image(
                  image: AssetImage('images/logo.png'),
                  width: 40,
                  height: 40,
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.blue,
              elevation: 20.0,
              onPressed: () {
                print('Technothlon Logo');
              },
            ),
            bottomNavigationBar: BottomAppBar(
              clipBehavior: Clip.antiAlias,
              shape: CircularNotchedRectangle(),
              child: Material(
                child: SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: new TabBar(
                    indicatorColor: Colors.purple,
                    labelColor: Colors.purple,
                    labelStyle: GoogleFonts.varelaRound(
                      fontWeight: FontWeight.bold,
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
        ));
  }
}
