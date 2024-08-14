import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:inastagram/generated/assets.dart';
import 'package:inastagram/models/post_model.dart';
import 'package:inastagram/models/story_model.dart';

import 'post_widget.dart';
import 'story_widget.dart';

class HomePage extends StatelessWidget {
  final String email;

  const HomePage({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                Assets.assetsIcIgtv,
              )),
          IconButton(onPressed: () {}, icon: Icon(Icons.chat_bubble_outline))
        ],
        title: Image.asset(
          Assets.assetsInstagramLogo,
          width: MediaQuery.of(context).size.width / 3,
        ),
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 6,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: storyList.length,
                itemBuilder: (context, index) =>
                    StoryWidget(storyModel: storyList[index]),
              ),
            ),
          ),
          SliverList.builder(
            itemCount: fakePosts.length,
            itemBuilder: (context, index) => PostWidget(
              postModel: fakePosts[index],
            ),
          )
        ],
      ),
    );
  }
}

class ImagePost extends StatelessWidget {
  final String image;

  const ImagePost({required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
      fit: BoxFit.cover,
    );
  }
}
