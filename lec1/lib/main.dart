import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:lec1/Flipkart1.dart';
import 'package:lec1/HomeWork.dart';
import 'package:lec1/Lecture2.dart';
import 'package:lec1/Lecture2a.dart';
import 'package:lec1/Practice.dart';
import 'package:lec1/Practicecontainer.dart';
import 'package:lec1/RegisterForm1.dart';
import 'package:lec1/Registrationform.dart';
import 'package:lec1/Saturday.dart';
import 'package:lec1/Statefull.dart';
import 'package:lec1/tabbar_demo.dart';

import 'Screens/Insta/InstagramUI.dart';
import 'Restaurantmenu.dart';
import 'Screens/Insta/Homescreen.dart';
import 'Screens/Whatsapp/Lesson3.dart';
import 'Screens/Whatsapp/whatsappScreen.dart';
import 'Screens/Whatsapp/whatsappdetail.dart';




main(){
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
       home : TabBarDemo(),
  //      initialRoute: '/',
  //       routes: {
  //         '/': (context) => Lecture1(),
  //         'Registration': (context) => RegistrationForm1(),
  //         'Lesson 3': (context) => Lecture3(),
  //         'Whatsapp': (context) => WhatsUp(),
  //         'WhatsAppDetail': (context) => WhatsUp(),
  //         'Flipkart': (context) => UiFlipkart(),
  //         'GridView': (context) => GridPractice(),
  // },
      theme: ThemeData.light()

    ),
  );
}

class Lecture1 extends StatelessWidget{

  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Hello World',
              style: TextStyle(
                fontSize:50.0,
                // color: Colors.green,
                fontWeight:FontWeight.bold,
              ),
            ),
          ),
          MaterialButton(onPressed: (){
            Navigator.pushNamed(context, 'Whatsapp');
          },child: Text('Whatsapp'),
          ),
          MaterialButton(onPressed: (){
            Navigator.pushNamed(context, 'Registration');
          },child: Text('Registration'),
          ),
          MaterialButton(onPressed: (){
            Navigator.pushNamed(context, 'GridView');
          },child: Text('GridView'),
          ),
        ],

      ),

    );
  }
}

