import 'package:flutter/material.dart';

class FeedTopTitle extends StatelessWidget {
    const FeedTopTitle({super.key, required this.profileImgUrl, required this.name, required this.region});

    final String profileImgUrl;
    final String name;
    final String region;

    @override
    Widget build(BuildContext context) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                ProfileAndRegion(profileImgUrl: profileImgUrl, name: name, region: region),
                Icon(Icons.more_horiz),
            ],
        );
    }
}

class ProfileAndRegion extends StatelessWidget {
    const ProfileAndRegion({super.key, required this.profileImgUrl, required this.name, required this.region});

    final String profileImgUrl;
    final String name;
    final String region;

    @override
    Widget build(BuildContext context) {
        return Row(
            children: [
                ClipOval(
                    child: Image.network(
                        profileImgUrl,
                        width: 32,
                        height: 32,
                        fit: BoxFit.cover,
                    ),
                ),
                const SizedBox(width: 10,),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text(
                            name,
                            style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                            ),
                        ),
                        const SizedBox(height: 1,),
                        Text(
                            region,
                            style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                            ),
                        )
                    ],
                )
            ],
        );
    }
}