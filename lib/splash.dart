import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:simple/friday.dart';
import 'package:simple/monday.dart';
import 'package:simple/thursday.dart';
import 'package:simple/tuesday.dart';
import 'package:simple/wednesday.dart';


final curr = Monday();
class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dateTime = DateTime
        .now()
        .weekday;
    if (dateTime == 1) {
      return AnimatedSplashScreen(duration: 0,
          splash: "images/mylogo.jpeg", nextScreen: Monday());
    } else if (dateTime == 2) {
      return AnimatedSplashScreen(duration: 0,
          splash: "images/mylogo.jpeg", nextScreen: Tuesday());
    } else if (dateTime == 3) {
      return AnimatedSplashScreen(duration: 0,
          splash: "images/mylogo.jpeg", nextScreen: Wednesday());
    } else if (dateTime == 4) {
      return AnimatedSplashScreen(duration: 0,
          splash: "images/mylogo.jpeg", nextScreen: Thursday());
    } else if (dateTime == 5) {
      return AnimatedSplashScreen(duration: 0,
          splash: "images/mylogo.jpeg", nextScreen: Friday());
    } else if (dateTime == 6) {
      return AnimatedSplashScreen(duration: 0,
          splash: "images/mylogo.jpeg", nextScreen: Monday());
    }else if (dateTime == 7) {
      return AnimatedSplashScreen(duration: 0,
          splash: "images/mylogo.jpeg", nextScreen: Monday());
    }
    return Scaffold();
  }
}
