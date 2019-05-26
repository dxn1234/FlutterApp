import 'package:flutter/material.dart';
import 'forgotpassword_screen.dart';
import 'home_screen.dart';
class SigninScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SigninScreenState();
  }

}
class SigninScreenState extends State<SigninScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 112.0),
                  child: Image.asset(
                    "images/hoa.png",
                    width: 72.0,
                    height: 72.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0,right: 16.0,top: 64.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(
                            fontSize: 14.0
                        ),
                        border: InputBorder.none,
                        hintText: "USER NAME",
                        fillColor: Colors.white,
                        filled: true
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0,right: 16.0,top: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(
                            fontSize: 14.0
                        ),
                        border: InputBorder.none,
                        hintText: "PASS WORD",
                        fillColor: Colors.white,
                        filled: true
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 32.0),
                  child: RaisedButton(
                      padding: EdgeInsets.only(left: 56.0,right: 56.0,top: 16.0,bottom: 16.0),
//                      elevation: 0.0,
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(
                            color: Colors.orangeAccent
                        ),
                      ),
                      onPressed: (){

                      }
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FogotPassWordScreen()
                          )
                      );
                    },
                    child: Text(
                      "FORGOT PASSWORD ?"
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 4.0),
                        child: Text(
                          "DON’T HAVE AN ACCOUNT?",
                          style: TextStyle(
                              color: Colors.black54
                          ),
                        ),
                      ),
                      Text(
                        "SIGN IN"
                      )
                    ],
                  )
                )
              ],
            ),
            Positioned(
              bottom: 16.0,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>HomeScreen()
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
      ),
    );
  }

}