import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inastagram/models/post_model.dart';
import 'package:mime/mime.dart';
import 'package:video_player/video_player.dart';

class MediaWidget extends StatefulWidget {
  final PostModel postModel;

  MediaWidget({
    super.key,
    required this.postModel,
  });

  @override
  State<MediaWidget> createState() => _MediaWidgetState();
}

class _MediaWidgetState extends State<MediaWidget> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();
  late VideoPlayerController controller = VideoPlayerController.networkUrl(
      Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'));

  late ChewieController chewieController;

  @override
  void initState() {
    super.initState();
    controller.initialize();
    chewieController = ChewieController(
        videoPlayerController: controller,
        autoPlay: true,
        looping: true,
        aspectRatio: 1.1,
        showControls: true,
        allowFullScreen: true,
        allowMuting: false,
        zoomAndPan: true,
        showOptions: false);
    setState(() {
      chewieController.play();
    });
  }

  @override
  void dispose() {
    super.dispose();
    chewieController.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1 / 1,
          child: CarouselSlider(
            carouselController: carouselController,
            options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                aspectRatio: 1.1,
                viewportFraction: 1,
                disableCenter: true),
            items: widget.postModel.medias.map((image) {
              var x = lookupMimeType(image);

              if (x != null && x.contains('image')) {
                return Image.network(
                  image,
                  fit: BoxFit.contain,
                );
              } else {
                return Chewie(
                  controller: chewieController,
                );
              }
            }).toList(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.postModel.medias.asMap().entries.map((e) {
              return Container(
                width: 10,
                height: 10,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentIndex == e.key ? Colors.blue : Colors.grey),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
