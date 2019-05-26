import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'rate_screen.dart';
import 'booknow_screen.dart';
import 'end_screen.dart';
import 'gallery_screen.dart';
List<String>nameImageList;
class DetailScreen extends StatefulWidget{
  int index;
  DetailScreen({Key key,this.index}) : super(key:key);
  @override
  State<StatefulWidget> createState() {
    nameImageList=List();
    for(int i=1;i<=6;i++){
      nameImageList.add("images/anh0${i}.jpg");
    }
    // TODO: implement createState
    return DetailScreenState();
  }

}
class DetailScreenState extends State<DetailScreen>{
  double ratting=0.0;
  @override
  Widget build(BuildContext context) {
    int wightImage=(MediaQuery.of(context).size.width-48)~/3;
    // TODO: implement build
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 52.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      "WILLIAM’S PHOTOGRAPHY",
                      style: TextStyle(
                        color: Colors.orange
                      ),
                    )
                  ],
                ),
              )
            ),
            Positioned(
              top: 48.0,
              right: 16.0,
              child: Icon(
                Icons.camera_alt
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 72.0),
              child: ListView(
                children: <Widget>[
                  Image.asset(
                    "images/anh0${widget.index}.jpg",
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width,
                    height: 320.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0,left: 16.0,right: 16.0),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        StarRating(
                          rating: ratting,
                          size: 24.0,
                          color: Colors.black,
                          borderColor: Colors.black,
                          starCount: 5,
                          onRatingChanged: (ratting){
                            setState(() {
                              this.ratting=ratting;
                            });
                          },
                        ),
                        Text(
                          "50 REVIEWS"
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.orange,
                        )
                      ],
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.0,left: 16.0,right: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "AREAS WE SERVE"
                        ),
                        Text(
                          "PRICE STARTING"
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0,left: 16.0,right: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                            "ALL OF UAE",
                          style: TextStyle(
                            color: Colors.orange
                          ),
                        ),
                        Text(
                            "PRICE STARTING",
                          style: TextStyle(
                              color: Colors.orange
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0,right: 16.0,top: 24.0),
                    child: Text(
                      '''LOREM IPSUM IS SIMPLY DUMMY TEXT OF THE
PRINTING AND TYPESETTING INDUSTRY.'''
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.0,left: 16.0,right: 16.0),
                    child: Text(
                      "SERVICES"
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0,left: 24.0,right: 16.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "PHOTOGRAPH",
                          style: TextStyle(
                            color: Colors.orange
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 24.0),
                          child: Text(
                            "VIDEOGRAPHY",
                            style: TextStyle(
                                color: Colors.orange
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0,left: 24.0,right: 16.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "OUTDOOR",
                          style: TextStyle(
                              color: Colors.orange
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 24.0),
                          child: Text(
                            "MODELING",
                            style: TextStyle(
                                color: Colors.orange
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 24.0),
                          child: Text(
                            "PHOTOGRAPHY",
                            style: TextStyle(
                                color: Colors.orange
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0,left: 24.0,right: 16.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "ADVERTISING",
                          style: TextStyle(
                              color: Colors.orange
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            "PHOTOGRAPHY",
                            style: TextStyle(
                                color: Colors.orange
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 32.0,left: 16.0),
                    child: Text(
                      "GALLERY"
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0,left: 16.0,right: 16.0),
                    child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                      children: List.generate(
                          nameImageList.length,
                              (index){
                            return GestureDetector(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => GalleryScreen(index: index)
                                    )
                                );
                              },
                              child: Container(
                                child: Image.asset(
                                  nameImageList.elementAt(index),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            );
                          }
                      ),
                    )
                  ),
                Padding(
                  padding: EdgeInsets.only(top: 40.0,left: 16.0,right: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "REVIEWS"
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "images/img_edit.png"
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.0),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RateScreen()
                                    )
                                );
                              },
                              child: Text(
                                  "RATE"
                              ),
                            )
                          )
                        ],
                      )
                    ],
                  ),
                ),
                  Padding(
                    padding: EdgeInsets.only(top: 40.0,left: 16.0,right: 32.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "PETER GEORGE",
                          style: TextStyle(
                            color: Colors.orange
                          ),
                        ),
                        StarRating(
                          size: 24.0,
                          starCount: 5,
                          borderColor: Colors.black,
                          color: Colors.black,
                          rating: ratting,
                          onRatingChanged: (ratting){
                            setState(() {
                              this.ratting=ratting;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 32.0,left: 16.0,right: 16.0),
                    child: Text(
                      '''LOREM IPSUM IS SIMPLY DUMMY TEXT OF THE
PRINTING AND TYPESETTING INDUSTRY.'''
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40.0,left: 16.0,right: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "WILLIAM JACOB",
                          style: TextStyle(
                              color: Colors.orange
                          ),
                        ),
                        StarRating(
                          size: 24.0,
                          starCount: 5,
                          color: Colors.black,
                          borderColor: Colors.black,
                          rating: ratting,
                          onRatingChanged: (ratting){
                            setState(() {
                              this.ratting=ratting;
                            });
                          },
                        )
                      ],
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.0,left: 16.0,right: 16.0),
                    child: Text(
                      '''LOREM IPSUM IS SIMPLY DUMMY TEXT OF THE
PRINTING AND TYPESETTING INDUSTRY.'''
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 64.0,bottom: 24.0,left: MediaQuery.of(context).size.width/2-88,right: MediaQuery.of(context).size.width/2-88),
                    child: RaisedButton(
                        padding: EdgeInsets.only(top: 16.0,bottom: 16.0),
//                      elevation: 0.0,
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                        child: Text(
                          "BOOK NOW",
                          style: TextStyle(
                              color: Colors.orangeAccent
                          ),
                        ),
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BookNowScreen()
                              )
                          );
                        }
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}