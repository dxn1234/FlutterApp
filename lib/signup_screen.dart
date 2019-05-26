import 'package:flutter/material.dart';
import 'termsconditions_screen.dart';
import 'signin_screen.dart';
import 'package:flutter/cupertino.dart';
import 'placeofuser_screen.dart';
import 'home_screen.dart';
class SignupScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SignupScreenState();
  }

}
class SignupScreenState extends State<SignupScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 56.0),
                    child: Image.asset(
                      "images/hoa.png",
                      width: 64.0,
                      height: 64.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.0,left: 16.0,right: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        hintStyle: TextStyle(
                            fontSize: 14.0
                        ),
                        fillColor: Colors.white,
                        border: InputBorder.none,
                        hintText: "NAME"
                      ),
                    ),
                  ),
//                  Padding(
//                    padding: EdgeInsets.only(top: 4.0,left: 16.0,right: 16.0),
//                    child: Divider(
//                      height: 1.0,
//                      color: Colors.black87,
//                    ),
//                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12.0,left: 16.0,right: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintStyle: TextStyle(
                            fontSize: 14.0
                        ),
                        filled: true,
                          border: InputBorder.none,
                          hintText: "EMAIL ID",
                      ),
                    ),
                  ),
//                  Padding(
//                    padding: EdgeInsets.only(top: 4.0,left: 16.0,right: 16.0),
//                    child: Divider(
//                      height: 1.0,
//                      color: Colors.black87,
//                    ),
//                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12.0,left: 16.0,right: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                            fontSize: 14.0
                        ),
                        filled: true,
                        fillColor: Colors.white,
                          border: InputBorder.none,
                          hintText: "PASS WORD"
                      ),
                      obscureText: true,
                    ),
                  ),
//                  Padding(
//                    padding: EdgeInsets.only(top: 4.0,left: 16.0,right: 16.0),
//                    child: Divider(
//                      height: 1.0,
//                      color: Colors.black87,
//                    ),
//                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12.0,left: 16.0,right: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                            fontSize: 14.0
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: InputBorder.none,
                        hintText: "CONFIRM PASSWORD",
                      ),
                      obscureText: true,
                    ),
                  ),
//                  Padding(
//                    padding: EdgeInsets.only(top: 4.0,left: 16.0,right: 16.0),
//                    child: Divider(
//                      height: 1.0,
//                      color: Colors.black87,
//                    ),
//                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.0),
                    child: RaisedButton(
                      padding: EdgeInsets.only(left: 56.0,right: 56.0,top: 16.0,bottom: 16.0),
//                      elevation: 0.0,
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                          color: Colors.orangeAccent
                        ),
                      ),
                        onPressed: (){
                          showDialog(
                              context: context,
                            child: SizedBox(
                              child:  CupertinoAlertDialog(
                                title: Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text(
                                      "NOTICE"
                                  ),
                                ),
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      child: Text(
                                          "PLEASE ACTIVATE YOUR ACCOUNT BY"
                                      ),
                                      padding: EdgeInsets.only(top: 8.0),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 4.0),
                                      child: Text(
                                          "CLICKING ON THE LINK SEND TO YOUR"
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 4.0),
                                      child: Text(
                                          "EMAIL THEN CLICK ON CONTINUE"
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 28.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Padding(
                                            child: Text(
                                                "DIDN’T RECEIVE MAIL"
                                            ),
                                            padding: EdgeInsets.only(right: 2.0),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 2.0),
                                            child: Text(
                                              "RESEND",
                                              style: TextStyle(
                                                  color: Colors.orangeAccent
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 24.0),
                                      child: RaisedButton(
                                          padding: EdgeInsets.only(left: 24.0,right: 24.0,top: 8.0,bottom: 8.0),
                                          color: Colors.white,
                                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                                          child: Text(
                                            "CONTINUE",
                                            style: TextStyle(
                                                color: Colors.orangeAccent
                                            ),
                                          ),
                                          onPressed: (){
                                            setState(() {
                                              print("chan doi");
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => PlaceOfUserScreen()
                                                  )
                                              );
                                            });
                                          }
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 16.0,bottom: 4.0),
                                      child: GestureDetector(
                                        onTap: (){
                                          print("clicked");
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => HomeScreen()
                                              )
                                          );
                                        },
                                        child: Text(
                                          "SKIP",
                                        ),
                                      )
                                    )
                                  ],
                                ),
                              ),
                            )
                          );
                        }
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.0),
                    child: Text(
                      "BY SIGNING UP YOU AGREE TO OUR",
                      style: TextStyle(
                        color: Colors.black54
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TermsConditionsScreen()
                            )
                        );
                      },
                      child: Text(
                          "TERMS & CONDITONS"
                      ),
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Text(
                            "OR SIGN IN WITH",
                            style: TextStyle(
                                color: Colors.black54
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child:Image.asset(
                              "images/img_facebook.png"
                          ),
                        ),
                        Image.asset(
                            "images/img_google.png"
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 4.0),
                          child: Text(
                            "ALREADY HAVE AN ACCOUNT?",
                            style: TextStyle(
                                color: Colors.black54
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SigninScreen()
                                )
                            );
                          },
                          child: Text(
                            "SIGN IN",
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 16.0,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeScreen()
                        )
                    );
                  },
                  child: Text(
                    "SKIP",
                    style: TextStyle(
                        color: Colors.black54
                    ),
                  ),
                )
              )
            ],
          ),
        )
      ),
    );
  }

}