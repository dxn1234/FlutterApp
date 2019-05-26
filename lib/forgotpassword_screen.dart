import 'package:flutter/material.dart';
class FogotPassWordScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FogotPassWordScreenState();
  }

}
class FogotPassWordScreenState extends State<FogotPassWordScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child:Icon(
            Icons.keyboard_arrow_left,
            size: 40.0,
            color: Colors.black54,
          ),
        ),
        centerTitle: true,
        title: Text(
          "FORGOT PASSWORD",
          style: TextStyle(
            fontSize: 16.0,
              color: Colors.orangeAccent
          ),
        ),
      ),
      body: Container(
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Positioned(
                bottom: 112.0,
                child: RaisedButton(
                    onPressed: (){

                    },
                  child: Text(
                    "REQUEST PASSWORD",
                    style: TextStyle(
                      color: Colors.orangeAccent
                    ),
                  ),
                  padding: EdgeInsets.only(left: 56.0,right: 56.0,top: 16.0,bottom: 16.0),
                  color: Colors.white,
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                ),
              ),
              Positioned(
                bottom: 56.0,
                child: Text(
                  "PLEASE CHECK EMAIL FOR INSTRUCTIONS"
                ),
              ),
              Positioned(
                bottom: 32.0,
                child: Text(
                    "TO RESET PASSWORD"
                ),
              ),
              Center(
                child: Padding(
                    padding: EdgeInsets.only(left: 16.0,right: 16.0,top: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "PLEASE ENTER REGISTERED E-MAIL ID",
                          hintStyle: TextStyle(
                              fontSize: 14.0
                          ),
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.white
                      ),
                    ),
                )
              ),
            ],
          ),
        ),
    );
  }
}