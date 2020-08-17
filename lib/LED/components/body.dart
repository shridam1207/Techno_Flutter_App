import 'package:flutter/material.dart';
import 'package:flutter_app_techno_recent/main.dart';
import 'background.dart';
import '../../constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_app_techno_recent/configuration.dart';

class Body extends StatelessWidget {
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

                  Hero(
                    tag:'hero',
                    child: CircleAvatar(

                      backgroundColor: Colors.transparent,
                      radius: 100.0,
                      child: Image.asset('images/LED2.png'),
                    ),

                  ),
                  SizedBox(height: size.height * 0.05),
/*            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),*/
                  //SizedBox(height: size.height * 0.05),
                  Center(
                    child: Text(
                      "LED",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Learn,Experience,Discover",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Center(
                    child:Container(
                      padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                      child: Text(
                        '''Technothlon, started with the aim of inspiring young minds, in its 15 years of span, has strived to identify the budding talent across the country and nurture and inspire them to be great future leaders of the country. With each and every possible way out to promote out of the box thinking amongst the students, Technothlon had started with its new campaign “Learn.Experience.Discover (LED)”. Through this initiative, we demonstrate to the school students, simple experiments, so as to explain to them the basic principles of science which otherwise they might be learning by rote. ''',
                        style: TextStyle(
                         // fontWeight: FontWeight.bold,
                         fontFamily: 'sniglet',
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                      child: Text(
                        "Some Glimpses",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  Container(height: 270,
                    decoration: BoxDecoration(
                      color:Colors.grey[100],),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: experiment.length,
                      itemBuilder: (context,index){
                        return Container(
                          child: Column(
                            children: [
                              Container(
                                height: 250,
                                width: 325,
                                padding: EdgeInsets.all(20),
                                margin: EdgeInsets.fromLTRB(25, 10,25,10),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      experiment[index]['iconPath'],),

                                    fit: BoxFit.fill,
                                  ),
                                  shape: BoxShape.rectangle,
//                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 20,
                                      offset: Offset(8, 8),
                                      color: Color(0xff333333).withOpacity(1),
                                      spreadRadius: 0,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20.0),
//                                  border: Border.all(
////                                    color: Colors.transparent,
//                                    width: 1.0,
//
//                                  ),

                                ),
//                                child: Image.asset(experiment[index]['iconPath'],
//                                  height: 150,
//                                  width: 250,
//                                ),
                              ),
                            ],
                          ),
                        );
                      },


                    ),
                  ),
                  ],),
              ),
          ]
      ),
    );
  }
}

