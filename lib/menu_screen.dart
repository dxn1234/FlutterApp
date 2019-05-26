import 'package:flutter/material.dart';
import 'package:flutter_appfailytale_flow/favorite_screen.dart';
import 'package:flutter_appfailytale_flow/profile_screen.dart';
import 'mybookings_screen.dart';
import 'aboutus_screen.dart';
import 'contactus_screen.dart';
import 'home_screen.dart';
List<String>menuList;
class MenuScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    menuList=List();
    menuList.add("MY BOOKINGS");
    menuList.add("MODELING");
    menuList.add("PHOTOGRAPHY");
    menuList.add("DRESS & ATTIRE");
    menuList.add("CATEGORY FOUR");
    menuList.add("ABOUT US");
    menuList.add("CONTACT US");
    return MenuScreenState();
  }

}
class MenuScreenState extends State<MenuScreen>{
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    final heightScreen=MediaQuery.of(context).size.height;
    final spaceTop=heightScreen-432;

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
        constraints: BoxConstraints.expand(),
        margin: EdgeInsets.only(left: 16.0,right: 16.0,top: spaceTop),
        child:ListView.builder(
            itemCount: menuList.length,
            itemBuilder: (context,index){
              return Padding(
                padding: EdgeInsets.only(top: 24.0),
                child:GestureDetector(
                  onTap: (){
                    if(index==0){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyBookingsScreen()
                          )
                      );
                    }
                    else if(index==5){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AboutUsScreen()
                          )
                      );
                    }
                    else if(index==6){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContactUsScreen()
                          )
                      );
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                          menuList.elementAt(index)
                      ),
                      Icon(
                          Icons.keyboard_arrow_right
                      )
                    ],
                  ),
                )
              );
            }
        ),
      )
    );
  }


  void tabSelected(int value) {
    setState(() {
      currentIndex=value;
      if(value==1){
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