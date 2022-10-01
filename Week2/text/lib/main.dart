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
        primarySwatch: Colors.blue,
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
          title: Text("Row"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Hello World"),
            Text("TextStyle with easy parameters",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                background: Paint()
                  ..color = Color(0xffc7e5b4)
                  ..style = PaintingStyle.fill,
              ),),
            Text("TextStyle with fontWeight",
              style: TextStyle(
                fontSize: 20,
                color: Colors.redAccent,
                fontWeight: FontWeight.w700,
              ),),
            Text(
              "TextStyle with fontStyle",
              style: TextStyle(
                fontSize: 20,
                color: Colors.lightBlue,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "TextStyle with letterSpacing 10",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                background: Paint() ..color = Colors.greenAccent,
                letterSpacing: 10,
              ),
            ),
            Text(
              "Flutter open : TextStyle with fontfamily",
              style: TextStyle(
                fontFamily: "tmon", fontSize: 40, color: Colors.pinkAccent
              ),
            ),
            Container(
              constraints: BoxConstraints.expand(height: 30),
              color: Colors.amberAccent,
              child: Text(
                "Text align end",
                style: TextStyle(background: Paint()..color = Colors.orangeAccent),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.purpleAccent,
              constraints: BoxConstraints.loose(Size(50, 200)),
              child: Text(
                "textDirection draw from right to left",
                textDirection: TextDirection.rtl,
              ),
            ),
            Container(
              color: Colors.redAccent,
              constraints: BoxConstraints.expand(height: 40, width: 160),
              child: Text(
                "softwrap true TEXT TEXT TEXT TEXT TEXT",
                softWrap: true,
              ),
            ),
            Container(
              color: Colors.blueAccent,
              constraints: BoxConstraints.expand(height: 40, width: 160),
              child: Text(
                "softwrap false TEXT TEXT TEXT TEXT TEXT",
                softWrap: false,
              ),
            ),
            Container(
              color: Colors.yellowAccent,
              constraints: BoxConstraints.expand(height: 45, width: 150),
              child: Text(
                "overflow TextOverFlow.ellipsis : TEXT TEXT",
                softWrap: false,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              color: Colors.greenAccent,
              constraints: BoxConstraints.expand(height: 45, width: 150),
              child: Text(
                "overflow TextOverFlow.clip : TEXT TEXT",
                softWrap: false,
                overflow: TextOverflow.clip,
              ),
            ),
            Container(
              color: Colors.purpleAccent,
              constraints: BoxConstraints.expand(height: 45, width: 150),
              child: Text(
                "overflow TextOverFlow.fade : TEXT TEXT",
                softWrap: false,
                overflow: TextOverflow.fade,
              ),
            ),
            Container(
              color: Colors.deepOrangeAccent,
              constraints: BoxConstraints.expand(height: 40, width: 150),
              child: Text(
                "max lines = 1 content content content content content content content content",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              "textScaleFactor = 1 fontSize = 16 ",
              style: TextStyle(fontSize: 16, color: Colors.lightBlueAccent),
              textScaleFactor: 1,
            ),
            Text(
              "textScaleFactor = 1.5 fontSize = 20 ",
              style: TextStyle(fontSize: 16, color: Colors.orangeAccent),
              textScaleFactor: 1.2,
            ),
          ],
        )
    );
  }
}
