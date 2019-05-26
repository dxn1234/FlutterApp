import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'menu_screen.dart';
import 'favorite_screen.dart';
import 'profile_screen.dart';
import 'infomation_screen.dart';
List<String>listTieuDe;
class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    listTieuDe=List();
    listTieuDe.add("VENUES");
    listTieuDe.add("PHOTOGRAPHERS");
    listTieuDe.add("WEDDING DRESS");
    listTieuDe.add("ENTERTAIMENT");
    listTieuDe.add("KOSHA DESIGN");
    listTieuDe.add("FLOWER SHOPS");
    return HomeScreenState();
  }

}
class HomeScreenState extends State<HomeScreen>{

  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    final wight=MediaQuery.of(context).size.width;
    final wightofitemgirdview=(wight-48)/2;
    print(listTieuDe.length);
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
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 48.0),
              child:  Image.asset(
                "images/hoa.png",
                width: 40.0,
                height: 40.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 112.0),
              child: GridView.count(
//                childAspectRatio: 8/8,
                padding: EdgeInsets.only(left: 16.0,right: 16.0,bottom: 16.0),
                crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                children: List.generate(
                    listTieuDe.length,
                    (index){
                      String nameTitle=listTieuDe.elementAt(index);
                      String nameImage=index<9?'images/anh0${index+1}.jpg':'images/anh${index+1}.jpg';
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InfomationScreen()
                              )
                          );
                        },
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: wightofitemgirdview,
                                height: wightofitemgirdview-24,
                                child: Image.asset(
                                  nameImage,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Text(
                                    nameTitle,
                                  style: TextStyle(
                                    color: Colors.black54
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      );
                    }
                )
              ),
            )
          ],
        ),
      )
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