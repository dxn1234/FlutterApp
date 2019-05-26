import 'package:flutter/material.dart';
import 'detail_screen.dart';
class EndScreen extends StatefulWidget{
  int index;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return EndScreenState();
  }

}
class EndScreenState extends State<EndScreen>{
  @override
  Widget build(BuildContext context) {
    final heightScreen=MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset(
                  "",
                  height: 1/2*heightScreen,
                ),
                Text(
                  "THANK YOU FOR BOOKING",
                  style: TextStyle(
                      fontSize: 16.0
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text(
                      "YOUR BOOKING HAS BEEN SENT TO THE",
                    style: TextStyle(
                      color: Colors.black54
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text(
                      "PROFESSIONAL.",
                    style: TextStyle(
                        color: Colors.black54
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.0),
                  child: Text(
                    "YOU WILL GET A CONFIRMATION",
                    style: TextStyle(
                        color: Colors.black54
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text(
                      "STATUS ON “BOOKING TAB”",
                    style: TextStyle(
                        color: Colors.black54
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 24.0,
              child: RaisedButton(
                  padding: EdgeInsets.only(left: 56.0,right: 56.0,top: 16.0,bottom: 16.0),
//                      elevation: 0.0,
                  color: Colors.white,
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  child: Text(
                    "BOOK NOW",
                  ),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen()
                        )
                    );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }

}