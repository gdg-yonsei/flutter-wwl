import 'package:flutter/material.dart';

class ListTest extends StatelessWidget {
  const ListTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTestWidget();
  }
}

class ListTestWidget extends StatefulWidget {
  const ListTestWidget({super.key});

  @override
  State<ListTestWidget> createState() => _ListTestState();
}

class _ListTestState extends State<ListTestWidget> {
  final ScrollController _homeController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          controller: _homeController,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Text(
                'Item $index',
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
                thickness: 1,
              ),
          itemCount: 50),
    );
  }
}
