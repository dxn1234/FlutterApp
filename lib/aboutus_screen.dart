import 'package:flutter/material.dart';
import 'package:flutter_appfailytale_flow/favorite_screen.dart';
import 'package:flutter_appfailytale_flow/home_screen.dart';
import 'package:flutter_appfailytale_flow/menu_screen.dart';
import 'package:flutter_appfailytale_flow/profile_screen.dart';
class AboutUsScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AboutUsScreenState();
  }

}
class AboutUsScreenState extends State<AboutUsScreen>{
  String title1='''LOREM IPSUM IS SIMPLY DUMMY TEXT OF THE
PRINTING AND TYPESETTING INDUSTRY. LOREM
IPSUM HAS BEEN THE INDUSTRY'S STANDARD
DUMMY TEXT EVER SINCE THE 1500S, WHEN AN
UNKNOWN PRINTER TOOK A GALLEY OF TYPE AND
SCRAMBLED IT TO MAKE A TYPE SPECIMEN BOOK.''';
  String title2='''IT HAS SURVIVED NOT ONLY FIVE CENTURIES, BUT
ALSO THE LEAP INTO ELECTRONIC TYPESETTING,
REMAINING ESSENTIALLY UNCHANGED.''';
  String title3='''IT WAS POPULARISED IN THE 1960S WITH THE
RELEASE OF LETRASET SHEETS CONTAINING LOREM IPSUM PASSAGES, AND MORE RECENTLY WITH DESKTOP PUBLISHING SOFTWARE LIKE ALDUS PAGEMAKER INCLUDING VERSIONS OF LOREM IPSUM.''';
  String title4='''DUMMY TEXT EVER SINCE THE 1500S, WHEN AN
UNKNOWN PRINTER TOOK A GALLEY OF TYPE AND
SCRAMBLED IT TO MAKE A TYPE SPECIMEN BOOK.''';
  String title5='''RELEASE OF LETRASET SHEETS CONTAINING LOREM IPSUM PASSAGES, AND MORE RECENTLY WITH DESKTOP PUBLISHING SOFTWARE LIKE ALDUS PAGEMAK''';
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
        margin: EdgeInsets.only(bottom: 16.0),
        child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 40.0,left: 16.0),
                child: Text(
                  "ABOUT THE APP",
                  style: TextStyle(
                      fontSize: 16.0
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.0,left: 16.0,right: 16.0),
                child: Text(
                  '''${title1}''',

                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 32.0,left: 16.0,right: 16.0),
                child: Text(
                  '''${title2}''',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 32.0,left: 16.0,right: 16.0),
                child: Text(
                  '''${title3}''',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 32.0,left: 16.0,right: 16.0),
                child: Text(
                  '''${title4}''',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 32.0,left: 16.0,right: 16.0),
                child: Text(
                  '''${title5}''',
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