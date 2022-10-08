import 'package:flutter/material.dart';

class FeedLikesText extends StatelessWidget {
    const FeedLikesText({super.key, required this.likes});

    final int likes;
    

    @override
    Widget build(BuildContext context) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                SizedBox(width: 15,),
                RichText(
                    text: TextSpan(
                        style: const TextStyle(
                            color: Colors.black
                        ),
                        children: <TextSpan>[
                            TextSpan(text: "Liked by "),
                            TextSpan(text: "$likes others", style: const TextStyle(fontWeight: FontWeight.bold))
                        ]
                    ),
                )
            ],
        );
    }
}