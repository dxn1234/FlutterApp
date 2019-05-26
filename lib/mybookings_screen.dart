import 'package:flutter/material.dart';
import 'package:flutter_appfailytale_flow/favorite_screen.dart';
import 'package:flutter_appfailytale_flow/home_screen.dart';
import 'package:flutter_appfailytale_flow/menu_screen.dart';
import 'package:flutter_appfailytale_flow/profile_screen.dart';
class MyBookingsScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyBookingsScreenState();
  }

}
class MyBookingsScreenState extends State<MyBookingsScreen>{
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: tabSelected,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
                title: Text(
                    ""
                ),
                icon: Image.asset(
                    "images/img_menu.png"
                )
            ),
            BottomNavigationBarItem(
                title: Text(
                    ""
                ),
                icon: Image.asset(
                  "images/img_home.png",
                  color: Colors.black,
                )
            ),
            BottomNavigationBarItem(
                title: Text(
                    ""
                ),
                icon: Image.asset(
                    "images/img_favorite.png"
                )
            ),
            BottomNavigationBarItem(
                title: Text(
                    ""
                ),
                icon: Image.asset(
                  "images/img_user.png",
                  color: Colors.black,
                )
            ),
          ]
      ),
      body: Container(
        margin: EdgeInsets.only(bottom: 8.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 40.0,left: 16.0),
              child: Text(
                "MY BOOKINGS",
                style: TextStyle(
                  fontSize: 16.0
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32.0,left: 16.0),
              child: Text(
                "PHOTOGRAPHY",
                style: TextStyle(
                  color: Colors.orange
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0,left: 16.0,right: 16.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "02 - DEC - 2017"
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                        "10:30 AM"
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0,left: 16.0),
              child: Text(
                  "WILLIAM’S PHOTOGRAPHY"
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0,left: 24.0,right: 16.0),
              child: Row(
                children: <Widget>[
                  Text(
                      "PHOTOGRAPHY"
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24.0),
                    child: Text(
                        "VIDEOGRAPHY"
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0,left: 16.0,right: 16.0),
              child: Text(
                '''LOREM IPSUM IS SIMPLY DUMMY TEXT OF THE
PRINTING AND TYPESETTING INDUSTRY.'''
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.0,left: 16.0,right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "MODELING",
                    style: TextStyle(
                      color: Colors.orange
                    ),
                  ),
                  Text(
                    "CONFIRMED"
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0,left: 16.0,right: 16.0),
              child:  Row(
                children: <Widget>[
                  Text(
                    "02 - DEC - 2017",
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                        "10:30 AM"
                    ),
                  )
                ],
              )
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0,left: 16.0),
              child: Text(
                "WILLIAM’S PHOTOGRAPHY"
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0,left: 24.0,right: 16.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "PHOTOGRAPHY"
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24.0),
                    child: Text(
                      "VIDEOGRAPHY"
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0,left: 16.0,right: 16.0),
              child: Text(
                  '''LOREM IPSUM IS SIMPLY DUMMY TEXT OF THE
PRINTING AND TYPESETTING INDUSTRY.'''
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.0,left: 16.0,right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "MODELING",
                    style: TextStyle(
                        color: Colors.orange
                    ),
                  ),
                  Text(
                      "CONFIRMED"
                  )
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 8.0,left: 16.0,right: 16.0),
                child:  Row(
                  children: <Widget>[
                    Text(
                      "02 - DEC - 2017",
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                          "10:30 AM"
                      ),
                    )
                  ],
                )
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0,left: 16.0),
              child: Text(
                  "WILLIAM’S PHOTOGRAPHY"
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0,left: 24.0,right: 16.0),
              child: Row(
                children: <Widget>[
                  Text(
                      "PHOTOGRAPHY"
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24.0),
                    child: Text(
                        "VIDEOGRAPHY"
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0,left: 16.0,right: 16.0),
              child: Text(
                  '''LOREM IPSUM IS SIMPLY DUMMY TEXT OF THE'''
              ),
            ),
          ],
        ),
      ),
    );
  }


  void tabSelected(int value) {
    setState(() {
      currentIndex=value;
      if(value==0){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MenuScreen()
            )
        );
      }
      else if(value==1){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HomeScreen()
            )
        );
      }
      else if(value==2){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FavoriteScreen()
            )
        );
      }
      else if(value==3){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProfileScreen()
            )
        );
      }
    });
  }
}