import 'package:flutter/material.dart';
import 'package:instagram_clone/consts.dart';

class FeedComments extends StatefulWidget {
    const FeedComments({super.key, required this.comments});

    final List<Comment> comments;

    @override
    State<FeedComments> createState() => _FeedCommentsState();
}

class _FeedCommentsState extends State<FeedComments> {
    bool expanded = false;

    @override
    Widget build(BuildContext context) {
        if(expanded){
            return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
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
                                        TextSpan(text: "${widget.comments[index].name} ", style: const TextStyle(fontWeight: FontWeight.bold)),
                                        TextSpan(text: widget.comments[index].comment, )
                                    ]
                                ),
                            )
                        ]);
                    },
                itemCount: widget.comments.length,
            );

        } else {
            return GestureDetector(
                onTap: () => {
                    // setState(() {
                    //     expanded = true;
                    // })
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                        SizedBox(width: 15,),
                        RichText(
                            text: TextSpan(
                                style: const TextStyle(
                                    color: Colors.black
                                ),
                                children: <TextSpan>[
                                    TextSpan(text: "${widget.comments[0].name} ", style: const TextStyle(fontWeight: FontWeight.bold)),
                                    TextSpan(text: widget.comments[0].comment, )
                                ]
                            ),
                        )
                    ],
                )
            );
        }
    }
}