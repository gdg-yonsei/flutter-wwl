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

class MyHomePage extends StatefulWidget {
  @override
  _ScaffoldState createState() => _ScaffoldState();
}

class _ScaffoldState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Scaffold"),
      ),
      body:
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Container(
              color: Colors.lightBlueAccent,
              child: Text("body",
              style: TextStyle(color: Colors.white, fontSize: 20),),
            )
          ]
        ),
      floatingActionButton: Container(
        height: 100,
          width: 100,
          child: FloatingActionButton(
            onPressed: () {
              print("click floating");
            },
            child: Text("REFRESH",
            style: TextStyle(fontSize: 10),),
          ),
      ),
      persistentFooterButtons: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
            },
            child: Icon(
              Icons.clear,
              color: Colors.white,
            ),
          ),
        Builder(builder: (context) => ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),
            onPressed: () {
          Scaffold.of(context).openDrawer();
        }, child: Icon(
          Icons.arrow_forward_outlined,
          color: Colors.white,
        )))
        ],
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text("Articles"),
              automaticallyImplyLeading: false,
              backgroundColor: Colors.orangeAccent,
              elevation: 0,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              constraints: BoxConstraints.expand(height: 80),
              child: Text(
                "This is my first article.",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(
              height: 0,
              color: Colors.black,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              constraints: BoxConstraints.expand(height: 80),
              child: Text(
                "This is my second article.",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(
              height: 0,
              color: Colors.black,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              constraints: BoxConstraints.expand(height: 80),
              child: Text(
                "This is my third article.",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(
              height: 0,
              color: Colors.black,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              constraints: BoxConstraints.expand(height: 80),
              child: Text(
                "This is my forth article.",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(
              height: 0,
              color: Colors.black,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              constraints: BoxConstraints.expand(height: 80),
              child: Text(
                "This is my fifth article.",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(
              height: 0,
              color: Colors.black,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              constraints: BoxConstraints.expand(height: 80),
              child: Text(
                "This is my sixth article.",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(
              height: 0,
              color: Colors.black,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              constraints: BoxConstraints.expand(height: 80),
              child: Text(
                "This is my seventh article.",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(
              height: 0,
              color: Colors.black,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.linked_camera,),
            label: "Capture",
          ),
        ],
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        fixedColor: Colors.redAccent,
        iconSize: 40,
      ),
      backgroundColor: Colors.yellowAccent,
      primary: false,
    );
  }
}
