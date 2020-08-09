import 'package:flutter/material.dart';
import 'package:pet_ui/main.dart';
//import 'package:flutter_auth/Screens/Login/login_screen.dart';
//import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'background.dart';
//import 'package:flutter_auth/components/rounded_button.dart';
import '../../constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_ui/configuration.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    /*return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,

        children: <Widget>[
          Positioned(
            top:0,
            left:0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: size.width*0.3,
            ),
          ),
          Positioned(
            bottom:0,
            left:0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: size.width*0.2,
            ),
          )
        ],
      ),
    );
  }
}

    */
    return Background(
      child: Stack(

          children: <Widget>[
            /*Positioned(
            top: 22,
            left: 10,
            child: IconButton(
              iconSize: 33.0,
              icon: Icon(Icons.arrow_back_ios  ),
              onPressed: (){print("heyhye");},
            ),

          ),    */    //NON SCROLLABLE BUTTON

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
                          //fontWeight: FontWeight.bold
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                Container(height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: experiment.length,
                    itemBuilder: (context,index){
                      return Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(0),
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
                                image: DecorationImage(
                                  image: ExactAssetImage('assets/splash_img.jpeg'),
                                  fit: BoxFit.fitHeight,),
//                                borderRadius: BorderRadius.circular(50.0),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1.0,
                                ),

                              ),
//                              child: Image.asset(experiment[index]['iconPath'],
//
//                                height: 200,
//                                width: 260,
//                              ),
                            ),
                          ],
                        ),
                      );
                    })),

                  /*RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),*/
                  ],),
              ),
          ]
      ),
    );
  }
}

