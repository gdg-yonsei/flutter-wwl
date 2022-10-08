import 'package:flutter/material.dart';
import 'feed_list.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomTabApp(),
    );
  }
}

class BottomTabApp extends StatefulWidget {
  const BottomTabApp({super.key});

  @override
  State<BottomTabApp> createState() => _BottomTabAppState();
}

class _BottomTabAppState extends State<BottomTabApp> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    FeedList(),
    Text("Search Page"),
    Text("Reels Page"),
    Text("Shop Page"),
    Text("My Profile Page"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
          ConstrainedBox(
            constraints: BoxConstraints(
                minHeight: 576,
                minWidth: MediaQuery.of(context).size.width,
            ),
            child: _widgetOptions.elementAt(_selectedIndex),
          )
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.black),
        child:
        BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ""
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: ""
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_circle_filled),
                label: ""
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shop),
                label: ""
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.circle_outlined),
                label: ""
            ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
        ),
      ),
    );
  }
}
