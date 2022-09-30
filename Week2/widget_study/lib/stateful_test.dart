import 'package:flutter/material.dart';

class StatefulTest extends StatelessWidget {
  const StatefulTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const StatefulTestWidget();
  }
}

class StatefulTestWidget extends StatefulWidget {
  const StatefulTestWidget({super.key});

  @override
  State<StatefulTestWidget> createState() => StatefulTestState();
}

class StatefulTestState extends State<StatefulTestWidget> {
  int _clickCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(_clickCount.toString()),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          if (_clickCount < 10) {
            _clickCount += 1;
          } else {
            _clickCount = 0;
          }
        }),
        child: const Icon(Icons.add),
      ),
    );
  }
}
