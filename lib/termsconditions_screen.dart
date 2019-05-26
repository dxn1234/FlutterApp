import 'package:flutter/material.dart';
class TermsConditionsScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TermsConditionsScreenState();
  }

}
class TermsConditionsScreenState extends State<TermsConditionsScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 16.0,top: 72.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "TERMS & CONDITIONS",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12.0),
                    child: Text(
                      "LOREM IPSUM",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0,right: 16.0),
                    child: Text(
                      '''IS SIMPLY DUMMY TEXT OF THE PRINTING AND TYPESETTING INDUSTRY. LOREM IPSUM HAS BEEN THE
INDUSTRY'S STANDARD DUMMY TEXT EVER SINCE
THE 1500S, WHEN AN UNKNOWN PRINTER TOOK A
GALLEY OF TYPE AND SCRAMBLED IT TO MAKE A
TYPE SPECIMEN BOOK.
IT HAS SURVIVED NOT ONLY FIVE CENTURIES, BUT
ALSO THE LEAP INTO ELECTRONIC TYPESETTING,
REMAINING ESSENTIALLY UNCHANGED.''',
                      style: TextStyle(
                          fontSize: 14.0
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text(
                      "RELEASE OF LETRASET",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                          fontSize: 14.0
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0,right: 16.0),
                    child: Text(
                      '''IT WAS POPULARISED IN THE 1960S WITH THE
RELEASE OF LETRASET SHEETS CONTAINING LOREM
IPSUM PASSAGES, AND MORE RECENTLY WITH DESKTOP PUBLISHING SOFTWARE LIKE ALDUS PAGEMAKER INCLUDING VERSIONS OF LOREM IPSUM.
RELEASE OF LETRASET SHEETS CONTAINING LOREM
IPSUM PASSAGES, AND MORE RECENTLY WITH DESKTOP PUBLISHING SOFTWARE.''',
                      style: TextStyle(
                          fontSize: 14.0
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 16.0,
              bottom: 72.0,
              child: Text(
                "DUMMY TEXT EVER SINCE THE 1500S, WHEN AN"
              ),
            ),
            Positioned(
              right: 8.0,
              left: 4.0,
              bottom: 32.0,
              child: Row(
                children: <Widget>[
                    GestureDetector(
                      child: Icon(
                        Icons.keyboard_arrow_left,
                        size: 40.0,
                      ),
                      onTap: (){
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      "NOWN PRINTER TOOK A GALLEY OF TYPE AND",
                      style: TextStyle(
                          fontSize: 14.0
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}