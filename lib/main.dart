import 'package:flutter/material.dart';
import 'package:zara/data.dart';

import 'detailpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zara',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height * .45,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/img_top.png"),
                            fit: BoxFit.cover)),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          right: 0,
                          left: 0,
                          child: Container(
                            height: MediaQuery.of(context).size.height * .45,
                            color: Colors.black.withOpacity(.4),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("LOOKBOOK",
                                      style: TextStyle(
                                          fontFamily: "Glamor",
                                          color: Colors.white,
                                          fontSize: 42.0)),
                                  Text(
                                    "SPRING 2016",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 20.0),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          left: 0,
                          child: Container(
                            height: 40.0,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(),
                                Text(
                                  "LOOKBOOK",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 18.0),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 8.0),
                                  height: 25.0,
                                  width: 25.0,
                                  child: Image.asset(
                                      "assets/images/ic_shopping_bag.png"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .4,
                  right: 40.0,
                  left: 40.0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * .6,
                    child: GridView.builder(
                      itemCount: pageList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: .8,
                          crossAxisCount: 2,
                          crossAxisSpacing: 8.0,
                          mainAxisSpacing: 8.0),
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DetailPage()));
                          },
                          child: Container(
                            height: 450.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white, width: 8.0)),
                            child: Image.asset(
                              pageList[index].imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 45.0,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.short_text,
                  size: 30.0,
                  color:
                      _currentIndex == 1 ? Colors.black : Colors.grey.shade300,
                ),
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  size: 30.0,
                  color:
                      _currentIndex == 2 ? Colors.black : Colors.grey.shade300,
                ),
                onPressed: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.photo_camera,
                  size: 30.0,
                  color:
                      _currentIndex == 3 ? Colors.black : Colors.grey.shade300,
                ),
                onPressed: () {
                  setState(() {
                    _currentIndex = 3;
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  size: 30.0,
                  color:
                      _currentIndex == 4 ? Colors.black : Colors.grey.shade300,
                ),
                onPressed: () {
                  setState(() {
                    _currentIndex = 4;
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.menu,
                  size: 30.0,
                  color:
                      _currentIndex == 5 ? Colors.black : Colors.grey.shade300,
                ),
                onPressed: () {
                  setState(() {
                    _currentIndex = 5;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
