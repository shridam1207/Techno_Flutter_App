import 'package:flutter/material.dart';
import 'package:flutter_app_technothlon/homeScreen.dart';
import 'package:flutter_app_technothlon/main.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:flutter_auth/Screens/Login/login_screen.dart';
//import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import '../../drawerScreen.dart';
import 'background.dart';
import '../../components/rounded_button.dart';
import '../../constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_app_technothlon/splash.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: size.height * 0.05),
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    iconSize: 33.0,
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()))
                    },
                  ),
                ),
                //SizedBox(height: size.height * 0.05),
                //SizedBox(height: size.height * 0.05),

                Hero(
                  tag: 'hero',
                  child: CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                    radius: 130.0,
                    child: Image.asset('assets/images/faqs.jpg'),
                  ),
                ),
                SizedBox(height: size.height * 0.05),

/*            SvgPicture.asset(
                "assets/icons/chat.svg",
                height: size.height * 0.45,
              ),*/
                //SizedBox(height: size.height * 0.05),
                Text(
                  "FAQ's",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
                Center(
                    child: Container(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                  child: Text(
                    """(These are general FAQ'S and do not relate to Technothlon 2021. For changes in the procedure of Technothlon 2021 visit updates)""",
                    style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        //fontSize: 40
                        ),
                    textAlign: TextAlign.center,
                  ),
                )),

                ListView(
                  primary: false,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: EdgeInsets.all(5.0),
                  children: <Widget>[
                    ExpansionTile(
                        title: const Text(
                            'What are Changes in Technothlon 2021 ?',
                            style: TextStyle(
                                fontFamily: 'sniglet',
                                fontWeight: FontWeight.bold)),
                        backgroundColor:
                            Theme.of(context).accentColor.withOpacity(0.025),
                        children: const <Widget>[
                          ListTile(
                              title: Text(
                                  'Please Visit Updates Section in the Menu For changes in Technothlon 2021 ')),
                        ]),
                    ExpansionTile(
                        title: const Text('What is Technothlon ?',
                            style: TextStyle(
                                fontFamily: 'sniglet',
                                fontWeight: FontWeight.bold)),
                        backgroundColor:
                            Theme.of(context).accentColor.withOpacity(0.025),
                        children: const <Widget>[
                          ListTile(
                              title: Text(
                                  'Technothlon is an annual international school championship for classes 9th to 12th conducted and organized by the student fraternity of IIT Guwahati. It consists of prelims and mains. Prelims is a written exam based on which teams are selected for the mains held at IIT Guwahati in which various events are held and prizes are given to the top three teams.')),
                        ]),
                    ExpansionTile(
                        title: const Text('What is Techniche ?',
                            style: TextStyle(
                                fontFamily: 'sniglet',
                                fontWeight: FontWeight.bold)),
                        backgroundColor:
                            Theme.of(context).accentColor.withOpacity(0.025),
                        children: const <Widget>[
                          ListTile(
                              title: Text(
                                  'Techniche is the annual techno-management festival of IIT Guwahati. It is one of the largest techno-management festivals in India. A large number of events are held during Techniche such as the Lecture Series in which lectures are delivered by various eminent personalities (Walter Bender, George Kourounis, Roger Hunter, Dr. Samuel Chand). Other events include Funniche, Industrial Conclave, Escalade, Rush Hour, Marathon. Various exhibitions and workshops are also held during the festival.')),
                        ]),
                    ExpansionTile(
                        title: const Text(
                            'What are the requirements to give this exam ?',
                            style: TextStyle(
                                fontFamily: 'sniglet',
                                fontWeight: FontWeight.bold)),
                        backgroundColor:
                            Theme.of(context).accentColor.withOpacity(0.025),
                        children: const <Widget>[
                          ListTile(
                              title: Text(
                                  'You must be studying in standard 9th-12th in the year 2020-21. Classes 9th and 10th comprise the Junior squad while classes 11th and 12th comprise the Hauts squad. No pre-requisite knowledge on definite topics in science or elsewhere is required.')),
                        ]),
                    ExpansionTile(
                        title: const Text(
                            'What is the syllabus for the prelims ?',
                            style: TextStyle(
                                fontFamily: 'sniglet',
                                fontWeight: FontWeight.bold)),
                        backgroundColor:
                            Theme.of(context).accentColor.withOpacity(0.025),
                        children: const <Widget>[
                          ListTile(
                              title: Text(
                                  'Technothlon is an exam filled with intriguing questions that test your logical thinking and presence of mind. If you think your analytical abilities are sharp and your logic is clear, then just sit for the exam and you are sure to crack it!')),
                        ]),
                    ExpansionTile(
                        title: const Text(
                            'Where will the examination be held ?',
                            style: TextStyle(
                                fontFamily: 'sniglet',
                                fontWeight: FontWeight.bold)),
                        backgroundColor:
                            Theme.of(context).accentColor.withOpacity(0.025),
                        children: const <Widget>[
                          ListTile(
                              title: Text(
                                  'The prelims will be conducted in schools which will be fixed as centres in 200+ cities all over India. To see the list of cities where the exam will be held, go to the centers page . You will be informed of the centres allocated for your city well in advance of the exam. For KVs, JNVs, APSs, the exam will be conducted in your schools itself.')),
                        ]),
                    ExpansionTile(
                        title: const Text(
                            'What kind of questions can I expect in the paper ?',
                            style: TextStyle(
                                fontFamily: 'sniglet',
                                fontWeight: FontWeight.bold)),
                        backgroundColor:
                            Theme.of(context).accentColor.withOpacity(0.025),
                        children: const <Widget>[
                          ListTile(
                              title: Text(
                                  'No questions in the paper will require prior knowledge of facts, formulae, etc. Questions will be both objective and subjective and will demand basic common sense, logic and presence of mind. Previous years papers are here.')),
                        ]),
                    ExpansionTile(
                        title: const Text(
                            'My partner fell ill and can’t give the exam. Can I give the exam alone ?',
                            style: TextStyle(
                                fontFamily: 'sniglet',
                                fontWeight: FontWeight.bold)),
                        backgroundColor:
                            Theme.of(context).accentColor.withOpacity(0.025),
                        children: const <Widget>[
                          ListTile(
                              title: Text(
                                  'No, individual participation is not allowed.')),
                        ]),
                    ExpansionTile(
                        title: const Text('When will I get my result ?',
                            style: TextStyle(
                                fontFamily: 'sniglet',
                                fontWeight: FontWeight.bold)),
                        backgroundColor:
                            Theme.of(context).accentColor.withOpacity(0.025),
                        children: const <Widget>[
                          ListTile(
                              title: Text(
                                  'The results of the Technothlon prelims will be declared in the first week of August to give the selected students ample time for booking their tickets.')),
                        ]),
                    ExpansionTile(
                        title: const Text('What is Technopedia ?',
                            style: TextStyle(
                                fontFamily: 'sniglet',
                                fontWeight: FontWeight.bold)),
                        backgroundColor:
                            Theme.of(context).accentColor.withOpacity(0.025),
                        children: const <Widget>[
                          ListTile(
                              title: Text(
                                  'Technopedia is an online module of Technothlon, where quizzes are posted monthly, various interesting topics and queries as well are discussed with the students at IIT by means of the forum and data on various technological advancements occurring across the globe is posted. It is an online version of Technothlon through which you will get the feel of Technothlon. Only students registered for the prelims may log onto Technopedia through id and password which will be provided to them through e-mail.')),
                        ]),
                    ExpansionTile(
                        title: const Text('What is Technalysis ?',
                            style: TextStyle(
                                fontFamily: 'sniglet',
                                fontWeight: FontWeight.bold)),
                        backgroundColor:
                            Theme.of(context).accentColor.withOpacity(0.025),
                        children: const <Widget>[
                          ListTile(
                              title: Text(
                                  'Each student receives a detailed analysis of his/her performance in the Prelims round. This will aid in identifying the weak spots and help in overall development.')),
                        ]),
                    ExpansionTile(
                        title: const Text('How do I reach IIT Guwahati ?',
                            style: TextStyle(
                                fontFamily: 'sniglet',
                                fontWeight: FontWeight.bold)),
                        backgroundColor:
                            Theme.of(context).accentColor.withOpacity(0.025),
                        children: const <Widget>[
                          ListTile(
                              title: Text(
                                  'Guwahati can be easily reached through airways and railways. Regular buses ply from IIT Guwahati to the city. We will have our volunteers waiting for you at the railway station or airport.')),
                        ]),
                    ExpansionTile(
                        title: const Text(
                            'How will our stay in IIT Guwahati be managed? What are the modes of accommodation given to us ?',
                            style: TextStyle(
                                fontFamily: 'sniglet',
                                fontWeight: FontWeight.bold)),
                        backgroundColor:
                            Theme.of(context).accentColor.withOpacity(0.025),
                        children: const <Widget>[
                          ListTile(
                              title: Text(
                                  'All the participants will be accommodated in our hostels. We have separate girls’ and boys’ hostels. The food will be available in the hostel mess at the reasonable rates. The beddings will be provided by us and in case of any problems, we have a very efficient hospitality team waiting for you.')),
                        ]),
                    ExpansionTile(
                        title: const Text(
                            'And what about money? Do we have to pay anything? How much ?',
                            style: TextStyle(
                                fontFamily: 'sniglet',
                                fontWeight: FontWeight.bold)),
                        backgroundColor:
                            Theme.of(context).accentColor.withOpacity(0.025),
                        children: const <Widget>[
                          ListTile(
                              title: Text(
                                  'There are nominal charges for the participating students as well as their their guardians which they have to pay upon reaching the campus, at the time of registration.This includes the accommodation and mess charges.')),
                        ]),
                    ExpansionTile(
                        title: const Text(
                            'How many parents are allowed per student ?',
                            style: TextStyle(
                                fontFamily: 'sniglet',
                                fontWeight: FontWeight.bold)),
                        backgroundColor:
                            Theme.of(context).accentColor.withOpacity(0.025),
                        children: const <Widget>[
                          ListTile(
                              title: Text(
                                  'We recommend bringing only a single mentor per team. This will help us in accommodating all the participants as well as the mentors.')),
                        ]),
                    ExpansionTile(
                        title: const Text(
                            'What will we do after reaching the campus ?',
                            style: TextStyle(
                                fontFamily: 'sniglet',
                                fontWeight: FontWeight.bold)),
                        backgroundColor:
                            Theme.of(context).accentColor.withOpacity(0.025),
                        children: const <Widget>[
                          ListTile(
                              title: Text(
                                  'The students get the opportunity to attend lectures given by renowned personalities, workshops, events, etc. They get to interact with the students presently studying there and enjoy the scenic, green campus of IIT Guwahati. There are Logic-Based Events for the selected participants. Technothlon is the only platform which gives school students such an opportunity at such an early stage.')),
                        ]),
                    ExpansionTile(
                        title: const Text(
                            'How can I contact home once I reach there ?',
                            style: TextStyle(
                                fontFamily: 'sniglet',
                                fontWeight: FontWeight.bold)),
                        backgroundColor:
                            Theme.of(context).accentColor.withOpacity(0.025),
                        children: const <Widget>[
                          ListTile(
                              title: Text(
                                  'We recommend you to bring your pre-paid or post-paid SIMs along with you. We have very few STD centres in the campus. However, we will always be there for you if you need any help.')),
                        ]),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
