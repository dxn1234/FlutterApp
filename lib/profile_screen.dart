import 'package:flutter/material.dart';
import 'package:flutter_appfailytale_flow/favorite_screen.dart';
import 'package:flutter_appfailytale_flow/home_screen.dart';
import 'package:flutter_appfailytale_flow/menu_screen.dart';
class ProfileScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProfileScreenState();
  }

}
class ProfileScreenState extends State<ProfileScreen>{
  List _cities =
  ["CHANGE YOUR COUNTRY", "Hà Nội", "Hà Tây", "Hà Nam", "Thành phố Hồ Chí Minh"];
  List<DropdownMenuItem<String>>_dropDownMenuItemsCitis;
  List _contries =
  ["SELECT YOUR COUNTRY", "Việt Nam", "Cu Ba", "Mông Cổ", "Trung Quốc"];
  List<DropdownMenuItem<String>>_dropDownMenuItemsCountries;
  String _currentCity;
  String _currentCountry;
  @override
  void initState(){
    _dropDownMenuItemsCountries=getDropDownMenuItemsCountry();
    _currentCountry=_dropDownMenuItemsCountries[0].value;
    _dropDownMenuItemsCitis = getDropDownMenuItemsCity();
    _currentCity = _dropDownMenuItemsCitis[0].value;
    super.initState();
  }
  List<DropdownMenuItem<String>> getDropDownMenuItemsCity() {
    List<DropdownMenuItem<String>> items = new List();
    for (String city in _cities) {
      items.add(new DropdownMenuItem(
          value: city,
          child: new Text(city)
      ));
    }
    return items;
  }
  List<DropdownMenuItem<String>> getDropDownMenuItemsCountry() {
    List<DropdownMenuItem<String>> items = new List();
    for (String country in _contries) {
      items.add(new DropdownMenuItem(
          value: country,
          child: new Text(country)
      ));
    }
    return items;
  }
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
        child: Padding(
          padding: EdgeInsets.only(top: 80.0,left: 16.0,right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "EDIT PROFILE",
                style: TextStyle(
                    fontSize: 16.0
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40.0),
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(60.0)),
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://image2.tin247.com/pictures/2016/06/28/her1467051262.jpg"
                      )
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "NAME",
                      hintStyle: TextStyle(
                          fontSize: 14.0
                      ),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "EMAIL ID",
                      hintStyle: TextStyle(
                          fontSize: 14.0
                      ),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.0),
                child: DropdownButton(
                    isExpanded: true,
                    value: _currentCountry,
                    items: _dropDownMenuItemsCountries,
                    onChanged: changedDropDownItemCityCountry
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.0),
                child: DropdownButton(
                    isExpanded: true,
                    value: _currentCity,
                    items: _dropDownMenuItemsCitis,
                    onChanged: changedDropDownItemCity
                ),
              )
            ],
          ),
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
//      else if(value==3){
//        Navigator.push(
//            context,
//            MaterialPageRoute(
//                builder: (context) => ProfileScreen()
//            )
//        );
//      }
    });
  }
  void changedDropDownItemCity(String value) {
    setState(() {
      _currentCity = value;
    });
  }
  void changedDropDownItemCityCountry(String value) {
    setState(() {
      _currentCountry = value;
    });
  }
}