import 'package:flutter/material.dart';
import 'package:instagram_clone/consts.dart';
import 'package:instagram_clone/single_feed/single_feed.dart';

class FeedList extends StatelessWidget {
  const FeedList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: FeedWidget(feedData: feedListData[index],),
          );
        },
        itemCount: feedListData.length,
      ),
    );
  }
}
