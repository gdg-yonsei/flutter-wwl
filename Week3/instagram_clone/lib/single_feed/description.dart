import 'package:flutter/material.dart';

class FeedDescription extends StatelessWidget {
    const FeedDescription({super.key, required this.description, required this.name});

    final String description;
    final String name;

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
                            TextSpan(text: "$name ", style: const TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: description, )
                        ]
                    ),
                )
            ],
        );
    }
}