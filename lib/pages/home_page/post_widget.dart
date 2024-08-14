import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inastagram/generated/assets.dart';
import 'package:inastagram/models/post_model.dart';
import 'package:inastagram/pages/home_page/media_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PostWidget extends StatelessWidget {
  final PostModel postModel;

  PostWidget({super.key, required this.postModel});

  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Row(
              children: [
                CircleAvatar(),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('adsads'),
                        SvgPicture.asset(Assets.assetsIcVerify)
                      ],
                    ),
                    Text('adsdassadsdadsa'),
                  ],
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
              ],
            ),
          ),
          MediaWidget(
            postModel: postModel,
            currentIndex: currentIndex,
            carouselController: carouselController,
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.comment_bank_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.send_outlined)),
              SizedBox(
                width: 30,
              ),

              //todo key
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: postModel.medias.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => carouselController.animateToPage(entry.key),
                    child: Container(
                      width: 30,
                      height: 30,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Colors.black).withOpacity(0.4),
                      ),
                      child: carouselController == entry.key
                          ? Text("$currentIndex/${postModel.medias.length}")
                          : null,
                    ),
                  );
                }).toList(),
              ),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_border)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text.rich(TextSpan(
                text: 'UserName',
                children: [
                  WidgetSpan(
                      child: SizedBox(
                    width: 8,
                  )),
                  TextSpan(
                      text:
                          'adskadsjldajklsdjklasdjklasadjklsdjklsjdklsajdklasdjklasjdklasdjklassdjlkaasdjkldsajlkadsjlksdajl',
                      style: Theme.of(context).textTheme.bodyLarge)
                ],
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.w700))),
          ),
        ],
      ),
    );
  }
}
