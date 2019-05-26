import 'package:flutter/material.dart';
import 'detail_screen.dart';
class GalleryScreen extends StatefulWidget{
  int index;
  GalleryScreen({Key key,this.index}) : super(key:key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GalleryScreenState();
  }

}
class GalleryScreenState extends State<GalleryScreen>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Stack(
          children: <Widget>[
            Positioned(
              right: 8.0,
              top: 8.0,
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 40.0),
                  width: 24.0,
                  height: 24.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      image: DecorationImage(
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSba1kieQcAVQB66Knq374Gp8TB5BpZ5092-S-Sv17oSX7IaWR5Ww",
                          )
                      )
                  ),
                ),
              )
            ),
            Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Text(
                      ""
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Image.asset(
                      "images/anh0${widget.index+1}.jpg",
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                    height: 3/5*MediaQuery.of(context).size.height,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                      ""
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

}