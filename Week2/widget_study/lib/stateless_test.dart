import 'package:flutter/material.dart';

class StatelessTest extends StatelessWidget {
  const StatelessTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const StatelessTestWidget();
  }
}

class StatelessTestWidget extends StatelessWidget {
  const StatelessTestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("StateLess"),
    );
  }
}
