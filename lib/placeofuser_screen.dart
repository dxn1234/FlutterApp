import 'package:flutter/material.dart';
import 'home_screen.dart';
class PlaceOfUserScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PlaceOfUserStateScreen();
  }

}
class PlaceOfUserStateScreen extends State<PlaceOfUserScreen>{
  List _cities =
  ["SELECT YOUR CITY", "Hà Nội", "Hà Tây", "Hà Nam", "Thành phố Hồ Chí Minh"];
  List<DropdownMenuItem<String>> _dropDownMenuItemsCitis;
  List _contries =
  ["SELECT YOUR COUNTRY", "Việt Nam", "Cu Ba", "Mông Cổ", "Trung Quốc"];
  List<DropdownMenuItem<String>> _dropDownMenuItemsCountries;
  String _currentCity;
  String _currentCountry;
  @override
  void initState() {
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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    child: Image.asset(
                      "images/hoa.png",
                      width: 80.0,
                      height: 80.0,
                    ),
                    padding: EdgeInsets.only(bottom: 128.0),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0,right: 16.0,bottom: 24.0),
                    child: DropdownButton(
                        isExpanded: true,
                        value: _currentCountry,
                        items: _dropDownMenuItemsCountries,
                        onChanged: changedDropDownItemCityCountry
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0,right: 16.0,bottom: 40.0),
                    child: DropdownButton(
                        isExpanded: true,
                        value: _currentCity,
                        items: _dropDownMenuItemsCitis,
                        onChanged: changedDropDownItemCity
                    ),
                  )
                ],
              ),
            Positioned(
              bottom: 48.0,
              child: RaisedButton(
                  padding: EdgeInsets.only(left: 56.0,right: 56.0,top: 16.0,bottom: 16.0),
//                      elevation: 0.0,
                  color: Colors.white,
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  child: Text(
                    "CONTINUE",
                    style: TextStyle(
                        color: Colors.orangeAccent
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeScreen()
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