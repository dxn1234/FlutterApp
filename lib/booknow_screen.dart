import 'package:flutter/material.dart';
import 'end_screen.dart';
class BookNowScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BookNowScreenState();
  }

}
class BookNowScreenState extends State<BookNowScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 48.0,left: 8.0,right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                 GestureDetector(
                   child: Icon(
                     Icons.keyboard_arrow_left,
                     size: 32.0,
                     color: Colors.black,
                   ),
                   onTap: (){
                     Navigator.pop(context);
                   },
                 ),
                  Text(
                    "WILLIAM’S PHOTOGRAPHY",
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 16.0
                    ),
                  ),
                  Text(
                    ""
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 112.0,left: 16.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "BOOK NOW",
                    style: TextStyle(
                        fontSize: 16.0
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 168.0,left: 16.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "SELECT SERVICES YOU WANT TO BOOK",
                    style: TextStyle(
                        color: Colors.orange
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 208.0,left: 16.0,right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "PHOTOGRAPHY"
                  ),
                  Image.asset(
                    "images/img_accept.png"
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 256,left: 16.0),
              child: Row(
                children: <Widget>[
                  Text(
                      "VIDEOGRAPHY"
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 24.0,
              child: RaisedButton(
                  padding: EdgeInsets.only(left: 56.0,right: 56.0,top: 16.0,bottom: 16.0),
//                      elevation: 0.0,
                  color: Colors.white,
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  child: Text(
                    "MAKE A BOOKING",
                    style: TextStyle(
                        color: Colors.orangeAccent
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EndScreen()
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