import 'package:flutter/material.dart';
import 'package:instagram_clone/const.dart';

class FeedWidget extends StatelessWidget {
  const FeedWidget({super.key, required this.feedData});

  final FeedData feedData;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        FeedTopTitle(),
        FeedImageWidget(),
        FeedActionButtonsList(),
        FeedLikesText(),
        FeedDescription(),
        FeedComments(),
      ]),
    );
  }
}
