import "package:flutter/material.dart";

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
      home: RaiseButtonPage(),
    );
  }
}

class RaiseButtonPage extends StatefulWidget {
  @override
  _RaiseButtonState createState() => _RaiseButtonState();
}

class _RaiseButtonState extends State<RaiseButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RAISE_BUTTON"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //our tutorial code.
            SizedBox(
              height: 300,
            ),
            _colorsButton(),
          ],
        ),
      ),
    );
  }

  Widget _colorsButton() => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      SizedBox(height: 10),

      ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.purpleAccent,
          onPrimary: Colors.yellowAccent
        ),
        onPressed: () {
          print("click");
        },
        child: Text('ElevatedButton with custom foreground/background',),
      ),
    ],
  );
}