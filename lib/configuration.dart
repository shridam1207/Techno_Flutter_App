import 'package:flutter/material.dart';
import 'package:flutter_app_techno_recent/MAINS/Mains.dart';
//import 'package:flutter_app_techno_recent/ContactUs/components/know_your_reps.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'LED/LED.dart';
import 'ContactUs/contact_us.dart';
import 'LogicQ.dart';
import 'QuickLinks/quick_links.dart';
import 'Solutions.dart';
import 'Updates/updates.dart';
import 'package:flutter_app_techno_recent/LogicQ.dart';
import 'package:flutter_app_techno_recent/Solutions.dart';
import 'package:flutter_app_techno_recent/Updates/updates.dart';
import 'AboutUs/about_us.dart';
import 'Technopedia/technopedia.dart';

Color fb_blue = Color.fromRGBO(66, 103 ,178,1);

Color primaryGreen = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0, 10))
];

List<Map> categories = [
  {'name': 'AboutUs', 'iconPath': 'images/AboutUs.png','page':AboutUs()},
  {'name': 'LED', 'iconPath': 'images/LED.png','page':LED()},
  {'name': 'Mains', 'iconPath': 'images/Mains.png','page':main_event(),},
  {'name': 'Pedia', 'iconPath': 'images/Pedia.png','page':Technopedia()},
];
List<Map> experiment = [
  {'iconPath': 'images/Experiment1.png'},
  {'iconPath': 'images/Experiment2.png'},
  {'iconPath': 'images/Experiment3.png'},
  {'iconPath': 'images/Experiment4.png'},
  {'iconPath': 'images/Experiment5.png'},
  {'iconPath': 'images/Experiment6.png'},
  {'iconPath': 'images/Experiment7.png'},
  {'iconPath': 'images/Experiment8.png'},
  {'iconPath': 'images/Experiment9.png'},
  {'iconPath': 'images/Experiment10.png'},

];

List<Map> drawerItems=[
  {
    'icon': Icons.person,
    'title' : 'About Us',
    'page': AboutUs()

  },
  {
    'icon': Icons.computer,
    'title' : 'Technopedia',
    'page':Technopedia()
  },
  {
    'icon': Icons.book,
    'title' : 'Solutions',
    'page':Cityreps()
  },
  {
    'icon': Icons.lightbulb_outline,
    'title' : 'LogicQ',
    'page':LogicQ()
  },
  {
    'icon': Icons.contacts,
    'title' : 'Contact Us',
    'page':ContactUs()
  },
  {
    'icon': Icons.update,
    'title' : 'Updates',
    'page':Updates()
  },
  {
    'icon': Icons.link,
    'title' : 'Quick Links',
    'page':QuickLinks()
  },
];


List<Map> headlist = [
  {'name': 'Aman Bansal', 'iconPath': 'heads_images/Aman_Bansal.jpg','details':'''North Zone
aman.bansal@techniche.org
+91 9755049920''' },
  {'name': 'Vedansh Nehra', 'iconPath': 'heads_images/Vedansh_Nehra.jpg','details':'''West Zone
vedansh@techniche.org
+91 9354020275''' },
  {'name': 'Pooja Bhagat', 'iconPath': 'heads_images/Pooja_Bhagat.jpg','details':'''Central Zone
pooja@techniche.org
+91 8401809075''' },
  {'name': 'Shridam Mahajan', 'iconPath': 'heads_images/Shridam_Mahajan.jpg','details':'''East Zone
shridam@techniche.org
+91 7587817679''' },
  {'name': 'Sai Chandan', 'iconPath': 'heads_images/Sai_Chandan.jpg','details':'''South Zone
chandan@techniche.org
+91 9030267303''' },
];

List<Map> mains_events=
[
  {
    "Name": "BIT LOGICA(HAUTS)",
    "About": "Bit logica If you were to put together a Biggest Hits list of card games, you would probably put Bit Logica at the top of that. Although very few people have played this game, yet it was a big success in Technothlon '18 Mains.Well yes its a card game. And its a card game in which even if you feel that you have got the bad cards, you can still turn the tables.",
    "Year": "2018"
  },
  {
    "Name": "WAR OF THE WORLDS(HAUTS)",
    "About": "t's the year 2050, Human kind is on the verge of extinction, world population has touched the 12 billion mark. Most countries decimated, entire continents rendered uninhabitable. Technothlon 2018 witnessed “ War of The World” where the students time traveled to year 2050 only to ascertain that the world is in peril. With only 50 surviving nations at war, its in the hand of the leader of the country, a team of two to strive to survive",
    "Year": "2018"
  },
  {
    "Name": "DATAVENGERS(HAUTS)",
    "About": "In God we trust. All others must bring data: The Participants were introduced to the world of Machine Learning and Data Science. They were taught the fundamentals of Data Handling and Machine Learning. They had to predict the Price of houses given their features. What followed was tedious hour-and-a-half data analysis and getting amazing predictions which got better the more they dwelled over it. ",
    "Year": "2018"
  },
  {
    "Name": "MATHMAX(JUNIORS)",
    "About": "MathMax, I guess the name is enough to tell you this involves something related to Maths! But what it does not tell you how much brain it requires to play the game. An event made after Hardwork of more than 10 months, will surely make your heads go crazy. To analyze each move of opponent, and to place a number and operator on a concentric Board may sound easy! ",
    "Year": "2018"
  },
  {
    "Name": "THE BIG SHORT(SHORTS)",
    "About": "After a successful Prelims this year, Technothlon Mains began this year with “The Big Short” Ever wondered how your parents manage their money and resources for your bright future?? Ever thought of becoming a businessman?? Ever thought of making your own superhero?? I know it’s getting interesting This event was all about bringing these thought processes into implementation where the students were given the opportunity to build their own Superhero",
    "Year": "2018"
  },
  {
    "Name": "BOB THE BUILDER(JUNIORS)",
    "About": "Sounds childish and simple well that's not what you think. Inspired by the title in this mechanical based event students had to make a bot that collect small paper balls. Moreover, NO Design specified they had to think the best design to fulfill the objective. THAT'S ALL? NO!! Adding to the difficulty, Its Time to test the bot.",
    "Year": "2018"
  },
  {
    "Name": "CHEXPLODE(JUNIORS)",
    "About": "Players lining up, getting their army together, ready to pit against each other, and devising their strategies, combing up their defences, protecting their king with their utmost might, for if a close acquaintance of the king is kidnapped, thus ends the reign of the mighty ruler- In this Game of CheXplode, you win or you die, there is no middle ground in between. With chaos all around, there is one way out- Blow up the enemy king by capturing its closest and loyal supporters",
    "Year": "2018"
  },
  {
    "Name": "Dr. MICHAEL R. BARRAT and PANEL DISCUSSION ",
    "About": "The evening of Day 2 of Technothlon had a great surprise awaiting the students. Like each year, this was the time for a one to one interaction session with a distinguished luminary. Technothlon 2018 had an exclusive personal interaction session with Dr. Micheal Barrat in store for the students.The children had a great time with Dr. Micheal, who is an active NASA astronaut.The session was fun - our esteemed guest and the participants enjoyed the entire experience immensely.",
    "Year": "2018"
  },
  {
    "Name": "HOP & CONQ(JUNIORS)",
    "About": "After a successful Prelims this year, Technothlon Mains began this year with Hop & Conq. A twist on the classic game of Chinese Checkers, it combines the best parts of checkers and chess, with pieces being given special powers. What followed was a game filled with thrill and suspense, that kept the participants on the edge of their seats, calculating their next move. ",
    "Year": "2017"
  },
  {
    "Name": "PRAGYAN(JUNIORS)",
    "About": "Pragyan was about building a working hydraulic arm right from scratch using household items, like cardboard, pipes and syringes. The students were free to come up with their own designs for completing the task. The basic principle involved was Pascal's Law. The students came up with some really innovative arm designs and was a sight to behold. ",
    "Year": "2017"
  },
  {
    "Name": "FLUXO DE ENERGIA(JUNIORS)",
    "About": "The students played against each other in real-time, in a quest to make trades and increase their life energy! A player could take up many roles, invest, grow and sell. The ultimate aim was to make the most profit. Being a real-time event, each player's action affected the other, resulting in a very dynamic game which had the participants thinking and planning at all times. ",
    "Year": "2017"
  },
  {
    "Name": "CONTADOR DE ELECTRONICA(JUNIORS)",
    "About": " The event began with an hour long workshop about breadboards and logical circuits. The students were then given an opportunity to practice their circuit making skills. Following which, their logical skills were put to the test as they were asked to not only design, but also assemble a counter circuit. This electrifying event had the students buzzing for a long time even after its completion!",
    "Year": "2017"
  },
  {
    "Name": "THE QUANTUM ESCAPE(HAUTS)",
    "About": "The event introduced students to the world of Game Development! The students were taught the game developing software Construct 2. A lot of thrill and excitement ensued as the students strategized to get across the maze after finding the optimum route. Once they got through the maze, they had to use the utilities of the software to debug a buggy game.",
    "Year": "2017"
  },
  {
    "Name": "MECHAWALK(HAUTS)",
    "About": "In this mechanical based event, the students were asked to make a bot that moves in a straight line. Sounds simple? What if you weren't allowed to use any curved surface as a wheel? Or connect the wheels directly to the motor? A set of restrictions were placed so as to get the students to think out of box! And think they did. ",
    "Year": "2017"
  },
  {
    "Name": "!CHESS(HAUTS)",
    "About": "As the name suggests, it is not chess. With a completely new board setup and a different objective for each player, it was unlike anything they had ever seen. With teams constantly looking to one up each other with their strategies, the players were on the edge of their seats for the entire duration of the game! ",
    "Year": "2017"
  },
  {
    "Name": "A LITTLE BID(HAUTS)",
    "About": "A Little Bid was a one of it's kind event that tested several aspects of the participants such as reasoning ability, mathematical skills, emotional stability, teamwork and ability to take instantaneous decisions. All participants were given virtual money, using which they had to auction for commodities. You not only had to be careful about the amount of money you're investing, but also about when you're investing it.",
    "Year": "2017"
  },
  {
    "Name": "CLOSING CEREMONY",
    "About": "Yet another successful Mains, bigger and better than ever before. The closing ceremony of T'17 had it all - joy, tears and excitement. It was on this day that our year long efforts finally realized. T'17 Mains had been successfully conducted and the winners chosen. We extend a sincere thanks to everyone involved in making T'17 a huge success. Looking forward to a better T’18. ",
    "Year": "2017"
  },
  {
    "Name": "AN INTERACTIVE SESSION WITH Dr. THOMAS BARCLAY ",
    "About": "Technothlon has been providing students across India a once in a lifetime experience since its inception, and this year was no different. This year, the top 50 teams in both the Juniors and Hauts categories got an incredible opportunity to meet and interact with Dr. Tom Barclay, Research Scientist at NASA and previously the Director of Kepler and K2 Science Guest Observer Offices.",
    "Year": "2017"
  },
  {
    "Name": "THE PHOTOHOLICS(HAUTS)",
    "About": "Objective of the event was to give a glimpse of the world of Robotics to the students. The problem statement was to make a Light-Sensing self driven vehicle. By using LDRs , the students made brilliant prototypes and solved the maze by showing path to their bots. ",
    "Year": "2016"
  },
  {
    "Name": "LOXICO CIRCUITOS(HAUTS)",
    "About": "Objective of the event was to give a glimpse of the world of Robotics to the students. The problem statement was to make a Light-Sensing self driven vehicle. By using LDRs , the students made brilliant prototypes and solved the maze by showing path to their bots. ",
    "Year": "2016"
  },
  {
    "Name": "EN PASANT(HAUTS)",
    "About": " 'Chess - Literally With A Twist' ! The objective of this event was for the students to play a reinvented version of chess in which 2 teams competed against each other. The twist in this event was that the board rotated after every two moves which added a new level of difficulty to this already arduous game. ",
    "Year": "2016"
  },
  {
    "Name": "UNO! DOS! TRES!(JUNIORS)",
    "About": "There is no harm in saying that ‘Out of the box thinking’ and ‘Technothlon’ are synonyms! The last event of Juniors squad required students to brainstorm strategies, co-ordinate and use logical skills well. This event was basically a card game where participants were asked to make a particular configuration of cards through exchanges. The exchanges occur in a particular fashion.",
    "Year": "2016"
  },
  {
    "Name": "SAIL THE MAZE(JUNIORS)",
    "About": "Objective of the event was to give students an insight of Naval engineering and the practical problems which was faced during the designing of ships. They were asked to make an RC boat with two motors attached. After making their boat, they were supposed to cover a maze (which was made in an artificial pool) with different check points within shortest time, collecting as many points as they can.",
    "Year": "2016"
  },
  {
    "Name": "CODEYARD(JUNIORS)",
    "About": "Adding another into the list, here comes the event which made the students to think before they think.The objective of this event was to introduce the students to the world of programming at a very early stage.Followed by a workshop , the event involved the students to use the deeper part of their brains for the next few hours.To let the students get familiar with codes, a simple and easy to understand language was designed.",
    "Year": "2016"
  },
  {
    "Name": "BREAKING BAD(JUNIORS)",
    "About": "The objective of this event was to design a simple vehicle with some braking mechanism. The vehicle starts off from the top of a ramp where it gains sufficient potential energy to move forward and with the use of the braking mechanism, students had to stop their vehicle as close as possible to a fixed line.",
    "Year": "2016"
  },
  {
    "Name": "STUDENT INTERACTION",
    "About": "Technothlon has been providing students across India a once in a lifetime experience since its inception, and this year was no different. This year, the top 50 teams in both the Juniors and Hauts categories got an incredible opportunity to meet and interact with Prof. Frederick J. Raab, the head of the observatory where Gravitational waves were discovered, and Dr. Amit Sethi, one of IIT Guwahati’s most distinguished Professors.",
    "Year": "2016"
  },
  {
    "Name": "CLOSING CEREMONY",
    "About": "The Mains, after spanning 3 days and many exciting challenges, allowed us to see who was the best amongst the intelligent minds who made their way to IIT Guwahati, and Nishant Abhangi and Nityati Mehta from Juniors Squad and Varun Sanklecha and Adarsh Agarwal from the Hauts Squad triumphed. The prize ceremony concluded another edition of Technothlon Mains ",
    "Year": "2016"
  },
  {
    "Name": "BREAK THE BLACK(J)",
    "About": "#Event1 \" BREAK THE BLACK \" , as powerful as it sounds was a mystery breaking process, only that it involved experimentation with electronic circuitry. Stunned in awe with a tinge of fire and adventure in their eyes, the hundred top teds of juniors squad, gushed out their ultra-fast testing and inference capabilities",
    "Year": "2015"
  },
  {
    "Name": "Poké Quest(J)",
    "About": "#Event3 \"Poké Quest\"... The adventure begins with a dream and motivation. There are no ways to escape from the epic battle, that will lead you to become a master! Technothlon gives the juniors their second challenge, this time with a machine programmed to fight with them and bring out the best of them all.",
    "Year": "2015"
  },
  {
    "Name": "WATER ESCAPE TO GLORY(J)",
    "About": "#Event5 \"Water Escape to Glory\"... As the name suggest, in the first event of Day 2, Technothlon gives the finalist their first experienced to compressed-fluid rockets or the Water Rockets. Get to know the basics of construction and working of a Water Rocket, put in your innovation and create your master piece.",
    "Year": "2015"
  },
  {
    "Name": "WATER OF METTLES",
    "About": "#Event2 \"War of Mettles\" , the first event for the hauts Techno finale. And let me tell you, it was a war alright! The students bared their fangs of wit and sharpened their swords of logic with much enthusiasm as they looted, plundered, formed alliances, stratergised and slashed their way to victory.",
    "Year": "2015"
  },
  {
    "Name": "AIR CRASH INVESTIGATION",
    "About": "#Event4 \"Air Crash Investigation\" - \"Once you eliminate the impossible, whatever remains, however improbable, must be the truth...\" In this second event of Hauts squad, the students had to use their \"detective instincts\" to unravel a mystery which led to the crash of a hypothetical aircraft."
    ,"Year": "2015"
  },
  {
  "Name": "3RINGS(H)",
  "About": " #Event6 \"3Rings\"- The third event for Hauts squad gave the students a hands on experience of basic robotics and circuit design. After an introduction to the world of robotics the students had to assemble their own differential drive bot and navigate through a maze. Two bonus rounds also tested their problem solving skills."
    ,"Year": "2015"
  },
  {
  "Name": "PRIZE DISTRIBUTION",
  "About": "\"As a man sows, so shall he reap\", it is said. And rightly so, the winners of Technothlon \'15 were awarded various interesting prizes, which included Microsoft Kinect for the first, Ollie 1.0 for the second, Raspberry Pi for the third. The Junior squad winners were awarded an iBall Pad for the first position, Ollie 1.0 for the second",
  "Year": "2015"
  },
  {
    "Name": "FINAL SHOWDOWN(H)",
    "About": "#Event8 On Day 3, the top five teams from the Hauts squad faced off in the Final Showdown. The winner was decided after three rounds: (i) Each team challenged their participants to a “puzzle-off”(ii) The teams were left stranded on Mars, where they had to shrewdly allocate their resources (iii) In a test of memory, they had to deduce the cards present with the opponents",
    "Year": "2015"
  },
  {
    "Name": "FINAL SHOWDOWN(J)",
    "About": "#Event7 After three intriguing and gruelsome events, the top 5 teams of the juniors squad so far, faced each other in never-seen-before challenges called \"Apocalypso - The Final Battle\".",
    "Year": "2015"
  },
  {
    "Name": "BATTLE OF HOGWARTS(H)",
    "About": "The second release of T'14 Mains Promenade presents you the online hauts event - Battle Of Hogwarts, the enthralling game in which the participants cast various charms on dangerous monsters and each other and hovered their way to victory.",
    "Year": "2014"
  },
  {
    "Name": "NIC : Doomsday(H)",
    "About": "A test of analytical and deductive skills for the Hauts squad, the NIC: Doomsday materialized after days of meticulous planning and extensive plotting. Bringing the teams right into the heart of the Cold War era, the event boasted of never-seen-before concepts.",
    "Year": "2014"
  },
  {
    "Name": "INSTIGRID(JUNIORS",
    "About": "In INSTIGRID participants put their brain against their peers on a platform named “Conway’s Game of Life” (cellular automation) where they had to design a board which had both offensive and defensive elements to attack and protect from their opponents.",
    "Year": "2014"
  },
  {
    "Name": "Roboter Saunde(JUNIORS)",
    "About": "It was a question of imagination, logic and control for the participants probing the paths of the unseen Martian surface with sensors while the only senses they got to put to use was common sense.The sixth release of T'14 Mains Promenade brings you the enthralling robotics event - Roboter ",
    "Year": "2014"
  },
  {
    "Name": "Technokits(Juniors)",
    "About": "Days come and go with every day having in store for us something more enthralling than the former. Only the memories remain behind which we can cherish lifelong. The thrilling journey of Technothlon'14 Mains has been as memorable for us as Organizers as it would have been for you as Participants. ",
    "Year": "2014"
  },
  {
    "Name": "HYDROCALYPSE(JUNIORS)",
    "About": "\"Ideas come alive when you believe in them.\" With constant teamwork and perseverance 'HYDROCALYPSE' which was an 'idea' came alive and we were delighted to witness the same in the participants who implemented many innovative ideas in the event and with hard work and dedication came out with flying colours.",
    "Year": "2016"
  },
  {
    "Name": "STUDENTS INTERACTION WITH ESA",
    "About": "Interaction with Christer Fuglesang Also posting pictures of interactive session of participants with Christer Fuglesang (Astronaut, European Space Agency). With two space shuttle missions and five space walks, he has achieved feats that most can only dream of and he was there to inspire those virtuoso young minds. ",
    "Year": "2014"
  },
  {
    "Name": "FINAL SHOWDOWN",
    "About": "The phrase “Expect the unexpected” perfectly describes the final mains event of Technothlon. All the events of the mains are nerve-raking enough. Add to that the pressure of the championship decider in a surprise format round where the top 5 teams compete against each other head-on. ",
    "Year": "2014"
  },
];