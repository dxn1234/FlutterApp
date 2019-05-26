import 'package:flutter/material.dart';
import 'package:flutter_appfailytale_flow/home_screen.dart';
import 'package:flutter_appfailytale_flow/menu_screen.dart';
import 'package:flutter_appfailytale_flow/profile_screen.dart';
List<String> listImageUser;
List<String> list;
int t;
class FavoriteScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    listImageUser=List();
    list=List();
    listImageUser.add("WILLIAM’S PHOTOGRAPHY");
    listImageUser.add("WILLIAM’S PHOTOGRAPHY");
    listImageUser.add("WILLIAM’S PHOTOGRAPHY");
    listImageUser.add("WILLIAM’S PHOTOGRAPHY");
    list.add("STARTS@ 100 AED");
    list.add("STARTS@ 100 AED");
    list.add("STARTS@ 100 AED");
    list.add("STARTS@ 100 AED");
    t=list.length+1;
    return FavoriteScreenState();
  }

}
class FavoriteScreenState extends State<FavoriteScreen>{
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    final wightImage=MediaQuery.of(context).size.width-32;
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
        constraints: BoxConstraints.expand(),
        child: Stack(
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 48.0),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      "images/hoa.png",
                      height: 40.0,
                      width: 40.0,
                    )
                  ],
                ),
              )
            ),
            Positioned(
              top: 48.0,
              right: 16.0,
              child: Icon(
                Icons.favorite_border,
              ),
            ),
//            Positioned(
//              left: 16.0,
//              right: 16.0,
//              top: 112.0,
//              child: Padding(
//                  padding: EdgeInsets.only(bottom: 40.0),
//                child: TextField(
//                  decoration: InputDecoration(
//                      prefixIcon: Icon(
//                          Icons.search
//                      ),
//                      hintText: "SEARCH",
//                      border: InputBorder.none,
//                      fillColor: Colors.white,
//                      filled: true
//                  ),
//                ),
//              )
//            ),
            Padding(
              padding: EdgeInsets.only(top: 112.0,left: 16.0,right: 16.0,bottom: 8.0),
              child:  ListView.builder(
                  itemCount: listImageUser.length,
                  itemBuilder: (context,index){
                    String nameImage=index<9?"images/anh0${index+1}.jpg":"images/anh${index+1}";
                    if(index==0){
                      return Column(
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                    Icons.search
                                ),
                                hintText: "SEARCH",
                                border: InputBorder.none,
                                fillColor: Colors.white,
                                filled: true
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 24.0),
                              child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                              Image.asset(
                              nameImage,
                              width: wightImage,
                              fit: BoxFit.fill,
                              height: 160.0,
                              ),
                              Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                              Text(
                              listImageUser.elementAt(index)
                              ),
                              Image.asset(
                              "images/img_accept.png"
                              )
                              ],
                              )
                              ),
                              Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text(
                              list.elementAt(index)
                              ),
                            )
                            ],
                            ),
                          )
                        ],
                      );
//                      return Padding(
//                        padding: EdgeInsets.only(bottom: 40.0),
//                        child: TextField(
//                          decoration: InputDecoration(
//                              prefixIcon: Icon(
//                                  Icons.search
//                              ),
//                              hintText: "SEARCH",
//                              border: InputBorder.none,
//                              fillColor: Colors.white,
//                              filled: true
//                          ),
//                        ),
//                      );
                    }
                    else{
                      return Padding(
                        padding: EdgeInsets.only(top: 24.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              nameImage,
                              width: wightImage,
                              fit: BoxFit.fill,
                              height: 160.0,
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                        listImageUser.elementAt(index)
                                    ),
                                    Image.asset(
                                        "images/img_accept.png"
                                    )
                                  ],
                                )
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text(
                                  list.elementAt(index)
                              ),
                            )
                          ],
                        ),
                      );
                    }
                  }
              ),
            )
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
//      else if(value==2){
//        Navigator.push(
//            context,
//            MaterialPageRoute(
//                builder: (context) => FavoriteScreen()
//            )
//        );
//      }
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