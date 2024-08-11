import 'package:animated_dashed_circle/animated_dashed_circle.dart';
import 'package:flutter/material.dart';
import 'package:inastagram/models/story_model.dart';

class StoryWidget extends StatelessWidget {
  final StoryModel storyModel;

  const StoryWidget({super.key, required this.storyModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: SizedBox(
            width: MediaQuery.of(context).size.height / 10,
            height: MediaQuery.of(context).size.height / 10,
            child: AnimatedDashedCircle().show(
              image: NetworkImage(storyModel.image),
              autoPlay: false,
              duration: const Duration(seconds: 5),
              height: 80,
              color: Colors.red,
              contentColor: Colors.white,
              imageBgColor: Colors.white,
              borderWidth: 8,
            ),
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          storyModel.name,
          style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }
}
