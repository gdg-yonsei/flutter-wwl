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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(Icons.star,size: 50,),
                  Icon(Icons.star,size: 50,),
                  Icon(Icons.star,size: 50,),
                ]
            ),
            _mainSize(MainAxisSize.min),
            _mainSize(MainAxisSize.max),

          ]
        )
    );
  }

  Widget _mainSize(mainSize) => Container(
    color: mainSize == MainAxisSize.min ? Colors.yellowAccent : Colors.redAccent,
    child: Row(
      mainAxisSize: mainSize,
      children: <Widget> [
        Text(("Nie"),
        style: TextStyle(color: Colors.black, fontSize: 30),),
        Text(
          "Nie",
          style: TextStyle(color: Colors.black, fontSize: 50),
        ),
        Text(
          "Nie",
          style: TextStyle(color: Colors.black, fontSize: 80),
        ),
        Text(
          "Nie",
          style: TextStyle(color: Colors.black, fontSize: 50),
        )
      ],
    ),
  );
}
