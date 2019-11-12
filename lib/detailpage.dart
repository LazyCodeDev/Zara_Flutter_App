import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF3F4F6),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    height: 50.0,
                    color: Color(0xFFF3F4F6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.close,
                            size: 35.0,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .3,
                        ),
                        Container(
                          height: 35.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/img_zara_logo.png"),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 50.0,
                  right: 0,
                  left: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * .95,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/photo1_zoom.png'),
                          fit: BoxFit.cover),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: MediaQuery.of(context).size.height * .62,
                          child: Container(
                            height: 60.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "FLORAL DRESS",
                                  style: TextStyle(
                                    fontFamily: "SanFranciscoDisplay",
                                    fontSize: 28.0,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w700
                                  )
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  "49.00 USD",
                                  style:TextStyle(
                                    fontFamily: "SanFranciscoDisplay",
                                    fontSize: 16.0,
                                    color:Colors.grey.shade700
                                  )
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * .8,
                          right: 0,
                          left: 0,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20.0),
                            height: 50.0,
                            color: Colors.black.withOpacity(.8),
                            child: Center(
                              child: Text(
                                "ADD TO BASKET",
                                style:TextStyle(
                                  color: Colors.white,
                                  fontFamily: "SanFranciscoDisplay",
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500
                                )
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
