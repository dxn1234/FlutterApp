import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'dart:io';
class WelcomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WelcomeScreenState();
  }

}
class WelcomeScreenState extends State<WelcomeScreen>{
  @override
  Widget build(BuildContext context) {
    final heightFullScreen=MediaQuery.of(context).size.height;
    // TODO: implement build
    return WillPopScope(
      onWillPop: (){
        exit(0);
      },
      child: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    "images/img_gril.jpg",
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                    height: 2/3*heightFullScreen,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0,top: 32.0),
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                          fontSize: 24.0
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0,top: 16.0,right: 16.0),
                    child: Text(
                        "LOREM IPSUM IS SIMPLY DUMMY TEXT OF THE PRINTING AND TYPESETTING INDUSTRY"
                    ),
                  ),
                ],
              ),
              Positioned(
                  right: 16.0,
                  bottom: 16.0,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupScreen()
                          )
                      );
                    },
                    child: Text(
                      "SKIP",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )
              ),
              Positioned(
                  bottom: 16.0,
                  left: 24.0,
                  child: GestureDetector(
                    onTap: (){
//                  exit(0);
                    },
                    child: Image.asset(
                        "images/cham.png"
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }

}