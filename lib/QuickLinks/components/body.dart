import 'package:flutter/material.dart';
import 'package:pet_ui/main.dart';
//import 'package:flutter_auth/Screens/Login/login_screen.dart';
//import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'background.dart';
import '../../components/rounded_button.dart';
import '../../constants.dart';
import 'package:flutter_svg/svg.dart';

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
                onPressed: (){Navigator.push(context, MaterialPageRoute(
                    builder: (context) => HomePage()
                ));},
              ),
            ),
            
            Hero(
              tag:'hero',
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 100.0,
                child: Image.asset('assets/images/quicklink.jpg'),
              ),
              
            ),

            SizedBox(height: size.height * 0.05),    

            Container(
              width: 240.0,
              height: 40.0,
              child :
              RaisedButton.icon(
                onPressed: (){ print('Button Clicked.'); },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
                label: Text(
                  'Facebook', 
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    ),
                ),
                icon: Image.asset('link_logo/facebook.png',width: 35,height: 35), 
                textColor: Colors.black,
                splashColor: Colors.blue[100],
                color: Colors.blue[300],
              ),
            ),

            SizedBox(height: size.height * 0.05),
            
            Container(
              width: 240.0,
              height: 40.0,
              child :
              RaisedButton.icon(
                onPressed: (){ print('Button Clicked.'); },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
                label: Text(
                  'Instagram', 
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                ),
                icon: Image.asset('link_logo/insta.png',width: 25,height: 25)/*Icon(
                  Icons.android, color:Colors.white,
                )*/, 
                textColor: Colors.black,
                splashColor: Colors.purple[100],
                color: Colors.purple[200],
              ),
            ),

            SizedBox(height: size.height * 0.05), 

            Container(
              width: 240.0,
              height: 40.0,
              child :    
              RaisedButton.icon(
                onPressed: (){ print('Button Clicked.'); },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
                label: Text(
                  ' Website ', 
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                ),
                icon: Image.asset('link_logo/web.png',width: 25,height: 25)/*Icon(
                  Icons.android, color:Colors.white,
                )*/, 
                textColor: Colors.black,
                splashColor: Colors.green[100],
                color: Colors.green[300],
              ),
            ),

            SizedBox(height: size.height * 0.05),

            Container(
              width: 240.0,
              height: 40.0,
              child : 
              RaisedButton.icon(
                onPressed: (){ print('Button Clicked.'); },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
                label: Text(
                  '   Blogs   ', 
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                ),
                icon: Image.asset('link_logo/medium.png',width: 25,height: 25)/*Icon(
                  Icons.android, color:Colors.white,
                )*/, 
                textColor: Colors.black,
                splashColor: Colors.yellow[300],
                color: Colors.yellow,
              ),
            ),  
            
            SizedBox(height: size.height * 0.05),
          ],
        ),
      ),
    );
  }
}  

