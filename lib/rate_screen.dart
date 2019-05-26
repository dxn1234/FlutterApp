import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
class RateScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RateScreenState();
  }

}
class RateScreenState extends State<RateScreen>{
  double rating=0.0;
  @override
  Widget build(BuildContext context) {
    double heightScreen=MediaQuery.of(context).size.height;
    int halfHeightScreen=heightScreen~/2;
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.only(left: 16.0,bottom: 160.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "ADD A REVIEW",
                      style: TextStyle(
                        fontSize: 16.0
                      ),
                    )
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(left: 16.0,right: 16.0,bottom: 48.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "RATING"
                    ),
                    StarRating(
                      rating: rating,
                      starCount: 5,
                      size: 24.0,
                      color: Colors.black,
                      borderColor: Colors.black,
                      onRatingChanged: (rating){
                        setState(() {
                          this.rating=rating;
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 80.0,left: 16.0,right: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 14.0
                    ),
                      filled: true,
                      fillColor: Colors.white,
                      border: InputBorder.none,
                      hintText: "ENTER YOUR REVIEWS"
                    ),
                  )
              ),
            ),
            Positioned(
              bottom: 88.0,
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
                    Navigator.pop(context);
                  }
              ),
            ),
            Positioned(
              bottom: 24.0,
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Text(
                    "SKIP"
                ),
              )
            )
          ],
        ),
      ),
    );
  }

}