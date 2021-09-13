import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/models/story.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({Key? key, required this.story}) : super(key: key);
  final Story story;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.red, Colors.yellow.shade800, Colors.orange]),
            border: Border.all(width: 2, color: Colors.transparent),
            borderRadius: BorderRadius.circular(50),
          ),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 32,
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 30,
              backgroundImage: NetworkImage(story.postedBy.profileImageUrl),
            ),
          ),
        ),
        Text(
          story.postedBy.username,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
