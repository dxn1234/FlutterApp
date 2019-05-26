import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'dart:async';
class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashScreenState();
  }

}
class SplashScreenState extends State<SplashScreen>{
  startTime() async {
    var _duration = Duration(seconds: 2);
    return Timer(_duration, () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => WelcomeScreen()
          )
      );
    });
  }
  @override
  void initState() {
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Image.asset(
          "images/hoa.png",
        ),
      ),
    );
  }

}
