import 'package:flutter/material.dart';
import 'package:instagram_clone/consts.dart';
import 'package:instagram_clone/single_feed/top_title.dart';
import 'action_buttons.dart';
import 'comments.dart';
import 'description.dart';
import 'likes_text.dart';
import 'main_image.dart';

class FeedWidget extends StatelessWidget {
  const FeedWidget({super.key, required this.feedData});

  final FeedData feedData;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
            const SizedBox(height: 11,),
            FeedTopTitle(profileImgUrl: feedData.profileImgUrl, name: feedData.name, region: feedData.region),
            const SizedBox(height: 11,),
            FeedImageWidget(imgUrl: feedData.imgUrl,),
            const FeedActionButtonsList(),
            FeedLikesText(likes: feedData.likes,),
            const SizedBox(height: 5,),
            FeedDescription(description: feedData.description, name: feedData.name,),
            const SizedBox(height: 5,),
            FeedComments(comments: feedData.comments,),
            const SizedBox(height: 25,),
        ],
      ),
    );
  }
}
