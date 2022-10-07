import "package:flutter/material.dart";
// import 'package:flutter_widgets/const/_const.dart';

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
      home: IconPage(),
    );
  }
}

class IconPage extends StatefulWidget {
  @override
  _IconState createState() => _IconState();
}

class _IconState extends State<IconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ICON"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Icon(
              Icons.ac_unit,
              size: 100,
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}