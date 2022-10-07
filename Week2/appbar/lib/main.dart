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
        title: Text("AppBar",
          style: TextStyle(color: Colors.white, fontSize: 25),),
        toolbarOpacity: 0.75,
        elevation: 10,
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        iconTheme: IconThemeData(color: Colors.white, size: 20, opacity: 0.9),
        actions: <Widget>[
          InkWell(
          child: Icon(Icons.menu),
          onTap: () {
            print("click menu");
          },
        ),
        SizedBox(width: 10,),
        InkWell(
          child: Icon(Icons.more_vert),
          onTap: () {
            print("click more");
          },
        ),
          SizedBox(width: 20),
      ],
      ),
      body: Text("Body"),
    );
  }
}
