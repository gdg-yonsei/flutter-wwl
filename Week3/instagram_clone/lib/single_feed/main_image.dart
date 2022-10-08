import 'package:flutter/material.dart';

class FeedImageWidget extends StatelessWidget {
    const FeedImageWidget({super.key, required this.imgUrl});

    final String imgUrl;

    

    @override
    Widget build(BuildContext context) {
        return SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.network(
                imgUrl,
                fit: BoxFit.cover,
            ),
        );
    }
}