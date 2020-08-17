import 'package:flutter/material.dart';
import 'package:flutter_app_techno_recent/main.dart';
//import 'package:flutter_auth/Screens/Login/login_screen.dart';
//import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'background.dart';
//import 'package:flutter_auth/components/rounded_button.dart';
import '../../constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            SizedBox(height: size.height * 0.05),
            //SizedBox(height: size.height * 0.05),

            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                iconSize: 33.0,
                icon: Icon(Icons.arrow_back_ios  ), 
                onPressed: (){Navigator.push(context, MaterialPageRoute(
                    builder: (context) => HomePage()
                ));},
              ),
            ),
        //SizedBox(height: size.height * 0.05),    
            SvgPicture.asset(
              "assets/icons/updates.svg",
              height: size.height * 0.25,
            ),
            SizedBox(height: size.height * 0.05),
            Text(
              "Updates",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40
                ),
            ),
            
            ListTile(
              leading: Icon(Icons.chevron_right ),
              title: Text("Make sure to confirm your email addresses by visiting your Profile.",                     
                       style: TextStyle(
                      fontFamily: 'sniglet',
                    ),
                 ),
            ),
            ListTile(
              leading: Icon(Icons.chevron_right ),
              title: Text("A very warm welcome to the participants, hope you have a pleasing journey.",                     
                       style: TextStyle(
                      fontFamily: 'sniglet',

                    ),
                 ),
            ),
            ListTile(
              leading: Icon(Icons.chevron_right ),
              title: Text("You can also edit your other contact details in the Edit Profile Tab.",                     
                       style: TextStyle(
                      fontFamily: 'sniglet',

                    ),
               ),
            ),


/*

                    Center(
                      child:Container(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: Text(
            '''1. Make sure to confirm your email addresses by visiting your Profile.

2. A very warm welcome to the participants, hope you have a pleasing journey.

3. You can also edit your other contact details in the Edit Profile Tab.''',
              style: TextStyle(
                //fontWeight: FontWeight.bold
                fontSize: 15,
                ),
              ),
            ),
          ),
*/          
          SizedBox(height: size.height * 0.05),
          SizedBox(height: size.height * 0.05),
          SizedBox(height: size.height * 0.05),
          SizedBox(height: size.height * 0.05),    
          SizedBox(height: size.height * 0.05),    
          SizedBox(height: size.height * 0.05),    
          SizedBox(height: size.height * 0.05),    
          SizedBox(height: size.height * 0.05),    
          SizedBox(height: size.height * 0.05),    
          ],
        ),
      ),
    );
  }
}  

