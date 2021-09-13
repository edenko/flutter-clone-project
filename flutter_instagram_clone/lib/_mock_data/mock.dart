import 'package:flutter_instagram_clone/models/post.dart';
import 'package:flutter_instagram_clone/models/story.dart';
import 'package:flutter_instagram_clone/models/user.dart';

User currentUser = User('id', 'stackedlist', 'https://d3edy9y3v7d67c.cloudfront.net/rooms/10001/images/960/i81240.jpg');

final List<Story> stories = [
  Story('id', currentUser),
  Story('id', currentUser),
  Story('id', currentUser),
  Story('id', currentUser),
  Story('id', currentUser),
  Story('id', currentUser),
  Story('id', currentUser),
];

final List<Post> posts = [
  Post('id', currentUser, 'https://d3edy9y3v7d67c.cloudfront.net/rooms/10001/images/960/i81236.jpg', 'title', 'New York, USA', 'caption', 'a few seconds', '100', '123', true, true),
  Post('id1', currentUser, 'https://d3edy9y3v7d67c.cloudfront.net/rooms/10001/images/960/i81241.jpg', 'title1', 'Paris, France', 'caption caption', '2 hours ago', '123', '234', true, false),
  Post('id2', currentUser, 'https://d3edy9y3v7d67c.cloudfront.net/rooms/10001/images/960/i81237.jpg', 'title2', 'Busan, Korea', 'caption caption caption', '2 hours ago', '234', '345', false, true),
  Post('id3', currentUser, 'https://d3edy9y3v7d67c.cloudfront.net/rooms/10001/images/960/i81239.jpg', 'title3', 'Toronto, Canada', 'caption caption caption', 'a week ago', '345', '456', false, false),
  Post('id4', currentUser, 'https://d3edy9y3v7d67c.cloudfront.net/rooms/10001/images/960/i81235.jpg', 'title4', 'New York, USA', 'captioncaptioncaption', '6 months ago', '456', '567', false, true),
];