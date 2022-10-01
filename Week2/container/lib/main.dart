import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Container(
              color: Colors.redAccent,
              child: Text("Hello World!"),
            ),
            Container(
              color: Colors.greenAccent,
              child: Text("greenAccent"),
            ),
            Container(
              color: Colors.deepPurpleAccent,
              padding: EdgeInsets.only(left: 20, right: 30, top: 10, bottom: 10),
              child: Container(
                color: Colors.deepOrangeAccent,
                child: Text("this.padding"),
              ),
            ),
            Container(
                color: Colors.yellowAccent,
                padding: EdgeInsets.all(20),
                child: Container(
                  child: Text("EdgeInsets.all"),
                )
              ),
            Container(
              width: 200,
              height: 150,
              color: Colors.lightBlueAccent,
              child: Text("width, height"),
            ),
            Container(
              color: Colors.orangeAccent,
              child: Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
                color: Colors.purpleAccent,
                child: Text("this.margin"),
              ),
            ),
            Container(
              color: Colors.yellowAccent,
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                margin: EdgeInsets.all(50),
                child: Container(
                  color: Colors.redAccent,
                  child: Text("margin+padding"),
                ),
              ),
            ),
            Container(
                color: Colors.lightGreenAccent,
                alignment: Alignment.bottomCenter,
              height: 50,
              child: Text("this.alignment"),
            ),
            Container(
              color: Colors.redAccent,
              height: 50,
              alignment: AlignmentDirectional.bottomEnd,
              child: Text("HellH",
              textDirection: TextDirection.rtl,),
            ),
            Container(
              color: Colors.purpleAccent,
              constraints: BoxConstraints.expand(height: 30),
              child: Text("BoxConstraints constraints"),
            ),
            Container(
              constraints: BoxConstraints.expand(height: 100),
              padding: EdgeInsets.all(10),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder (
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                color: Colors.pinkAccent,),
              child: Text("decoration: ShapeDecoration"),
            ),
            Container(
              constraints: BoxConstraints.expand(height: 200),
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.lightBlue, Colors.yellow]),
                shape: BoxShape.circle),
              child: Text("decoration: BoxDecoration"),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 10),
              constraints: BoxConstraints.expand(height: 100, width: 100),
              color: Colors.lightBlue,
              child: Text("this.transform"),
            ), Container(
              padding: EdgeInsets.only(top: 10, left: 10),
              constraints: BoxConstraints.expand(width: 100, height: 100),
              color: Colors.pink,
              transform: Matrix4.rotationY(pi/4)..rotateX(pi/4),
              child: Text("this.platform"),
            )
          ],
        )
      )
    );
  }
}
