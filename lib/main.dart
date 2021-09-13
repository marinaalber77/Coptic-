
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:coptic/tabScreen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'electronic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
          duration: 4000,
          splash: Container(
              child: Image.asset("images/splash.jpg", fit: BoxFit.cover,)),
          nextScreen: tabScreen(),
          splashIconSize: double.infinity,
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.leftToRight,
          backgroundColor: Colors.white
      ),
    );
  }
}


