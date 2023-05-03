import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/start/mainscreen.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/start/register.dart';
import 'package:myapp/start/login.dart';
import 'package:myapp/start/start.dart';
//import 'package:sliderexample/slider/slider_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ai Shopping System',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        Login.id: (context) => Login(),
        Register.id: (context) => Register(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        MainScreen.id: (context) => MainScreen(),
      },
    );
  }
}
