import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:inastagram/models/post_model.dart';

class MediaWidget extends StatefulWidget {
  final PostModel postModel;
   int currentIndex;
   CarouselController carouselController;

   MediaWidget(
      {super.key, required this.postModel,required this.currentIndex,required this.carouselController});

  @override
  State<MediaWidget> createState() => _MediaWidgetState();
}

class _MediaWidgetState extends State<MediaWidget> {

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: CarouselSlider(
        carouselController: widget.carouselController,
        options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                widget.currentIndex = index;
              });
            },
            aspectRatio: 1.1,
            viewportFraction: 1,
            disableCenter: true),
        items: widget.postModel.medias
            .map((image) => Image.network(
                  image,
                  fit: BoxFit.contain,
                ))
            .toList(),
      ),
    );
  }
}
