import 'package:flutter/material.dart';
import 'package:flutter_appfailytale_flow/favorite_screen.dart';
import 'package:flutter_appfailytale_flow/home_screen.dart';
import 'package:flutter_appfailytale_flow/menu_screen.dart';
import 'package:flutter_appfailytale_flow/profile_screen.dart';
class ContactUsScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContactUsScreenState();
  }

}
class ContactUsScreenState extends State<ContactUsScreen>{
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 40.0,left: 16.0),
                  child: Text(
                    "CONTACT US",
                    style: TextStyle(
                        fontSize: 16.0
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 64.0,left: 16.0,right: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(
                            fontSize: 14.0
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "ENTER YOUR NAME",
                        border: InputBorder.none
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 24.0,left: 16.0,right: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(
                            fontSize: 14.0
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "EMAIL ID",
                        border: InputBorder.none
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24.0,left: 16.0,right: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(
                            fontSize: 14.0
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "PHONE NUMBER",
                        border: InputBorder.none
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24.0,left: 16.0,right: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(
                            fontSize: 14.0
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "ENTER YOUR COMMENTS HERE",
                        border: InputBorder.none
                    ),
                  ),
                ),
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
                    "SUBMIT",
                    style: TextStyle(
                        color: Colors.orangeAccent
                    ),
                  ),
                  onPressed: (){

                  }
              ),
            ),
          ],
        )
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