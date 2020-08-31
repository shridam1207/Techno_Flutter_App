import 'package:flutter/material.dart';
import 'package:flutter_app_technothlon/main.dart';
import '../background.dart';
import '../../../constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/*Function abcd() { Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomePage()))
}*/
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  final List<String> messages = ['saf','sdagdags','sdgasf'];

  @override
  void initState(){
    super.initState();
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async{
        print("onMessage: $message");
        final notification = message['notification'];
        setState(() {
          messages.add( notification['body']);
        });
        //Navigator.of(context).push(
          //MaterialPageRoute(builder: (BuildContext context) => Updates()));
      
      },
      onLaunch: (Map<String, dynamic> message) async{
        print("onLaunch: $message");  
      },
      onResume: (Map<String, dynamic> message) async{
        print("onResume: $message");
      },  

      
    );
    
    _firebaseMessaging.requestNotificationPermissions(
      const IosNotificationSettings(sound: true, badge: true, alert: true));
  } 

    @override
 

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
          child: Background(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //SizedBox(height: size.height * 0.05),
/*              Center(
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                    color:Colors.transparent,
                  ),
                  child: ListView.builder(
                        itemCount: messages.length,
                        itemBuilder: (context, position) {
                          return ListTile(
                            leading: Icon(Icons.chevron_right ),
                            title: 
                              Text(messages[position],                     
                                style: TextStyle(
                                  fontFamily: 'sniglet',
                                ),
                              ),
                          );
                        },
                      )
                    
                  
                )
              ),
*/

              //SizedBox(height: size.height * 0.05),
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

              Center(
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                    color:Colors.transparent,
                  ),
                  child:StreamBuilder(
                    stream: Firestore.instance.collection('updatelist').snapshots(),
                    builder:(context,snapshot){
                      if(!snapshot.hasData) return const Text('Loading');
                      
                      return ListView.builder(
                        itemCount: snapshot.data.documents.length,
                        itemBuilder: (context, position) {
                          return ListTile(
                            leading: Icon(Icons.chevron_right ),
                            title: 
                              Text(snapshot.data.documents[position]['update'],                     
                                style: TextStyle(
                                  fontFamily: 'sniglet',
                                ),
                              ),
                          );
                        },
                      );
                    }
                  ),
                )
              ),

              
            ],
          ),
        ),
      ),
    );
  }

//  */

}
