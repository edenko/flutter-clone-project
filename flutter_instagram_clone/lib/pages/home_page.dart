import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/_mock_data/mock.dart';
import 'package:flutter_instagram_clone/widgets/custom_home_app_bar.dart';
import 'package:flutter_instagram_clone/widgets/post_card.dart';
import 'package:flutter_instagram_clone/widgets/story_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomHomeAppBar(),
        /**********************************************************************
                                        Stories
         **********************************************************************/
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: stories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 90,
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: StoryCard(story: stories[index]),
                    );
                  }
                ),
              ),
              Divider(height: 1),
            ],
          ),
        ),
        /**********************************************************************
                                          Home Feed
         **********************************************************************/
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return PostCard(post: posts[index],);
          }, childCount: posts.length)
        )
      ],
    );
  }
}
