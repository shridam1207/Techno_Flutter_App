import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_techno_recent/configuration.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
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
  int photoIndex = 0;
  int photoIndex_theme = 0;
//
//  var images4 = [
//    'assets/img11.jpg',
//    'assets/img12.jpg',
//    'assets/img13.jpg',
//    'assets/img14.jpg',
//  ];

  var photos = [
    'assets/poster1.jpg',
    'assets/poster.jpg',
  ];
  var photos_theme = [
    'assets/theme_hauts.jpg',
    'assets/theme_juniors.jpg',
  ];

  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  void _previousImage_theme() {
    setState(() {
      photoIndex_theme = photoIndex_theme > 0 ? photoIndex_theme - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }

  void _nextImage_theme() {
    setState(() {
      photoIndex_theme = photoIndex_theme < photos_theme.length - 1 ? photoIndex_theme + 1 : photoIndex_theme;
    });
  }



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
                          height: MediaQuery.of(context).size.height +700,
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
                                  height: MediaQuery.of(context).size.height +700,
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
                        top: 400.0,
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
                          top: 450.0,
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
                                                margin: EdgeInsets.fromLTRB(0, 10,15,10),
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
                      ),
                      Positioned(
                        top: 700.0,
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
                        top: 750.0,
                        left: 10.0,
                        right: 10.0,
                        child:Container(
                          height: 400,
                          width: 2000,
                          child: Swiper(
//                            curve: Curves.easeIn,
                            itemCount: 2,
                            itemBuilder: (BuildContext context, int index) {
                              return ClipRRect(
//                                  borderRadius: BorderRadius.circular(10),
                                  child: Image(
                                    image: AssetImage(photos[index]),
                                    fit: BoxFit.cover,
                                    width:1000,
                                  ));
                            },
                            viewportFraction: 1,
                            scale: 1,
                            pagination: SwiperPagination(),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 1200.0,
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
                        top: 1235.0,
                        left: 10.0,
                        right: 10.0,
                        child:Container(
                          margin: EdgeInsets.symmetric(vertical: 12),
                          height: 425,

                          child: Swiper(
                            curve: Curves.easeIn,
                            itemCount: 2,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                margin: EdgeInsets.fromLTRB(0, 10,15,10),
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

                                ),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image(
                                      image: AssetImage(photos_theme[index]),
                                      fit: BoxFit.cover,
                                    )),
                              );
                            },
                            viewportFraction: 0.8,
                            scale: 0.9,
                            pagination: SwiperPagination(),
                          ),
                        ),
                      ),
                    ])
                      ])
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

}

class SelectedPhoto extends StatelessWidget {

  final int numberOfDots;
  final int photoIndex;

  SelectedPhoto({this.numberOfDots, this.photoIndex});

  Widget _inactivePhoto() {
    return new Container(
        child: new Padding(
          padding: const EdgeInsets.only(left: 3.0, right: 3.0),
          child: Container(
            height: 8.0,
            width: 8.0,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(4.0)
            ),
          ),
        )
    );
  }

  Widget _activePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 3.0, right: 3.0),
        child: Container(
          height: 10.0,
          width: 10.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 0.0,
                    blurRadius: 2.0
                )
              ]
          ),
        ),
      ),
    );
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];

    for(int i = 0; i< numberOfDots; ++i) {
      dots.add(
          i == photoIndex ? _activePhoto(): _inactivePhoto()
      );
    }

    return dots;
  }


  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildDots(),
      ),
    );
  }
}

class SelectedPhoto_theme extends StatelessWidget {

  final int numberOfDots_theme;
  final int photoIndex_theme;

  SelectedPhoto_theme({this.numberOfDots_theme, this.photoIndex_theme});

  Widget _inactivePhoto() {
    return new Container(
        child: new Padding(
          padding: const EdgeInsets.only(left: 3.0, right: 3.0),
          child: Container(
            height: 8.0,
            width: 8.0,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(4.0)
            ),
          ),
        )
    );
  }

  Widget _activePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 3.0, right: 3.0),
        child: Container(
          height: 10.0,
          width: 10.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 0.0,
                    blurRadius: 2.0
                )
              ]
          ),
        ),
      ),
    );
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];

    for(int i = 0; i< numberOfDots_theme; ++i) {
      dots.add(
          i == photoIndex_theme ? _activePhoto(): _inactivePhoto()
      );
    }

    return dots;
  }


  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildDots(),
      ),
    );
  }
}


