import 'package:flutter/material.dart';
import 'package:flutter_app_techno_recent/homeScreen.dart';
import 'package:flutter_app_techno_recent/main.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:flutter_auth/Screens/Login/login_screen.dart';
//import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import '../../drawerScreen.dart';
import 'background.dart';
import '../../components/rounded_button.dart';
import '../../constants.dart';
import 'package:flutter_svg/svg.dart';

List<Map> devlist = [
    {'tag': 'shridam','name': 'Shridam Mahajan', 'iconPath': 'dev_images/Shridam_Mahajan.jpg','details':'''East Zone Head
shridam@techniche.org
+91 7587817679''' },

  {'tag': 'sparsh', 'name':   ' Sparsh Dutta  ', 'iconPath': 'dev_images/sparsh.jpg','details':'''Ex - Head
    
    ''' },

  {'tag': 'atharva','name':   'Atharva Shrawge', 'iconPath': 'dev_images/atharva.jpg','details':'''Technothlon
Team Member
 ''' },

  {'tag': 'parag','name':     'Parag Panigrahi', 'iconPath': 'dev_images/parag.jpg','details':'''Technothlon
Team Member
  ''' },

  {'tag': 'tushar','name':    ' Tushar Bajaj  ', 'iconPath': 'dev_images/tushar.jpg','details':'''Technothlon
Team Member
  ''' }


];



class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[

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
                radius: 200.0,
                child: Image.asset('assets/icons/coder.jpg'),
              ),
            ),
            
            //SizedBox(height: size.height * 0.05),
            
            Text(
              "Developers",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40
              ),
            ),
            
            SizedBox(height: size.height * 0.03),

            Container(height: 500,
              decoration: BoxDecoration(
                color:Colors.transparent,
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:devlist.length,
                itemBuilder: (context,index){
                  return Container(
                    child: Column(
                      children: [
                        Container(
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.fromLTRB(10, 10,15,10),
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
                                Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child : CircleAvatar(
                                    radius: 90.0,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: AssetImage(devlist[index]['iconPath']),
                                  ),
                                ),
                                Text(
                                  devlist[index]['name'],
                                  style: TextStyle(
                                    //ontWeight: FontWeight.bold,
                                      fontSize: 27
                                  ),
                                ),
                                Center(
                                  child:Container(
                                    padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                                    child: Text(
                                      devlist[index]['details'],
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
          
          ],
        ),
      ),
    );
  }
}
