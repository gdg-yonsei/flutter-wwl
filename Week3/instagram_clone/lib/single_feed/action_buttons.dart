import 'package:flutter/material.dart';

class FeedActionButtonsList extends StatelessWidget {
    const FeedActionButtonsList({super.key});

    @override
    Widget build(BuildContext context) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
                _LikeCommentShare(),
                _SaveButton(),
            ],
        );
    }
}

class _LikeCommentShare extends StatelessWidget {
    const _LikeCommentShare({super.key});

    @override
    Widget build(BuildContext context) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
                SizedBox(width: 14,),
                _LikeButton(),
                SizedBox(width: 8,),
                Icon(Icons.chat_bubble_outline_rounded),
                SizedBox(width: 17,),
                Icon(Icons.send)
            ],
        );
    }
}

class _LikeButton extends StatefulWidget {
    const _LikeButton({super.key});

    @override
    State<_LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<_LikeButton> {
    bool liked = false;

    @override
    Widget build(BuildContext context) {
        if(liked){
            return IconButton(
                onPressed: (){
                    setState(() {
                        liked = false;
                    });
                },
                icon: const Icon(Icons.favorite, size: 24,)
            );

        } else {
            return IconButton(
                onPressed: (){
                    setState(() {
                        liked = true;
                    });
                },
                icon: const Icon(Icons.favorite_border_rounded, size: 24,)
            );
        }
    }
}


class _SaveButton extends StatefulWidget {
    const _SaveButton({super.key});

    @override
    State<_SaveButton> createState() => _SaveButtonState();
}

class _SaveButtonState extends State<_SaveButton> {
    bool saved = false;

    @override
    Widget build(BuildContext context) {
        if(saved){
            return IconButton(
                onPressed: (){
                    setState(() {
                        saved = false;
                    });
                },
                icon: const Icon(Icons.bookmark)
            );

        } else {
            return IconButton(
                onPressed: (){
                    setState(() {
                        saved = true;
                    });
                },
                icon: const Icon(Icons.bookmark_border)
            );
        }
    }
}