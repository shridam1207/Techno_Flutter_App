import 'package:flutter/material.dart';
//import 'package:flutter_auth/Screens/Login/login_screen.dart';
//import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'background.dart';
import '../../components/rounded_button.dart';
import '../../constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_ui/configuration.dart';

//List<Map> headlist = [
//  {'name': 'Aman Bansal', 'iconPath': 'heads_images/Aman_Bansal.jpg','details':'''North Zone
//aman.bansal@techniche.org
//+91 9755049920''' },
//  {'name': 'Vedansh Nehra', 'iconPath': 'heads_images/Vedansh_Nehra.jpg','details':'''West Zone
//vedansh@techniche.org
//+91 9354020275''' },
//  {'name': 'Pooja Bhagat', 'iconPath': 'heads_images/Pooja_Bhagat.jpg','details':'''Central Zone
//pooja@techniche.org
//+91 8401809075''' },
//  {'name': 'Shridam Mahajan', 'iconPath': 'heads_images/Shridam_Mahajan.jpg','details':'''East Zone
//shridam@techniche.org
//+91 7587817679''' },
//  {'name': 'Sai Chandan', 'iconPath': 'heads_images/Sai_Chandan.jpg','details':'''South Zone
//chandan@techniche.org
//+91 9030267303''' },
//];
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[


            SizedBox(height: size.height * 0.05),
            SizedBox(height: size.height * 0.05),
            Text(
              "Meet the heads",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40
                ),
            ),




            Container(height: 600,
                decoration: BoxDecoration(
                  color:Colors.transparent,),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:headlist.length,
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
                              borderRadius: BorderRadius.circular(50.0),
                              border: Border.all(
                                color: Colors.white,
                                width: 1.0,
                              ),

                            ),
                            child:Column(
                              children: [
                                Hero(
                                  tag: 'hero',
                                  child: Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: CircleAvatar(
                                      radius: 110.0,
                                      backgroundColor: Colors.transparent,
                                      backgroundImage: AssetImage(headlist[index]['iconPath']),
                                    ),
                                  ),
                                ),
                                Text(
                                  headlist[index]['name'],
                                  style: TextStyle(
                                    //ontWeight: FontWeight.bold,
                                    fontSize: 30
                                  ),
                                ),
                                Center(
                                  child:Container(
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
                              ]
                            )          
                          ),
                        ],
                      ),
                    );
                  },
                ),
            ),

/*
            SizedBox(height: size.height * 0.05),
            Hero(
              tag: 'hero',
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: CircleAvatar(
                  radius: 110.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('heads_images/Aman_Bansal.jpg'),
                ),
              ),
            ),
            Text(
              "Aman Bansal",
              style: TextStyle(
                //ontWeight: FontWeight.bold,
                fontSize: 30
              ),
            ),
            Center(
              child:Container(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                child: Text(
                  '''North Zone
aman.bansal@techniche.org
+91 9755049920''',
                  style: TextStyle(
                    //fontWeight: FontWeight.bold
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            SizedBox(height: size.height * 0.05),    


            Hero(
              tag: 'hero',
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: CircleAvatar(
                  radius: 110.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('heads_images/Vedansh_Nehra.jpg'),
                ),
              ),
            ),
            Text(
              "Vedansh Nehra",
              style: TextStyle(
                //ontWeight: FontWeight.bold,
                fontSize: 30
              ),
            ),
            Center(
              child:Container(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                child: Text(
                  '''West Zone
vedansh@techniche.org
+91 9354020275''',
                  style: TextStyle(
                    //fontWeight: FontWeight.bold
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            SizedBox(height: size.height * 0.05),    


            Hero(
              tag: 'hero',
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: CircleAvatar(
                  radius: 110.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('heads_images/Pooja_Bhagat.jpg'),
                ),
              ),
            ),
            Text(
              "Pooja Bhagat",
              style: TextStyle(
                //ontWeight: FontWeight.bold,
                fontSize: 30
              ),
            ),
            Center(
              child:Container(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                child: Text(
                  '''Central Zone
pooja@techniche.org
+91 8401809075''',
                  style: TextStyle(
                    //fontWeight: FontWeight.bold
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            SizedBox(height: size.height * 0.05),    


            Hero(
              tag: 'hero',
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: CircleAvatar(
                  radius: 110.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('heads_images/Shridam_Mahajan.jpg'),
                ),
              ),
            ),
            Text(
              "Shridam Mahajan",
              style: TextStyle(
                //ontWeight: FontWeight.bold,
                fontSize: 30
              ),
            ),
            Center(
              child:Container(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                child: Text(
                  '''East Zone
shridam@techniche.org
+91 7587817679''',
                  style: TextStyle(
                    //fontWeight: FontWeight.bold
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            SizedBox(height: size.height * 0.05),    


            Hero(
              tag: 'hero',
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: CircleAvatar(
                  radius: 110.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('heads_images/Sai_Chandan.jpg'),
                ),
              ),
            ),
            Text(
              "Sai Chandan",
              style: TextStyle(
                //ontWeight: FontWeight.bold,
                fontSize: 30
              ),
            ),
            Center(
              child:Container(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                child: Text(
                  '''South Zone
chandan@techniche.org
+91 9030267303''',
                  style: TextStyle(
                    //fontWeight: FontWeight.bold
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            SizedBox(height: size.height * 0.05),    
*/
/*            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            //SizedBox(height: size.height * 0.05),
            Text(
              "Technopedia",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40
              ),
            ),
            Center(
              child:Container(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                child: Text(
                  '''Technopedia is the online module of Technothlon providing its students with an ultimate experience of the prelims beforehand. With the monthly quizzes, Technopedia aims at keeping the young minds involved in brainstorming questions and helping them prepare for the prelims''',
                  style: TextStyle(
                    //fontWeight: FontWeight.bold
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            
            RoundedButton(
              text: "Attempt Now",
              press: () {
              /*  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );*/
              },
            ),*/

            /*RoundedButton(
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
            ),*///*/
                /*        SvgPicture.asset(
              "assets/icons/technopedia.svg",
              height: size.height * 0.3,
            ),*/
          ],
        ),
      ),
    );
  }
}  

