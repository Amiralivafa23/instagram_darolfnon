class PostModel {
  String avatar;
  String location;
  String username;
  bool isVerify;
  List<String> medias;
  int likeCount;
  String caption;

  PostModel(
      {required this.avatar,
      required this.caption,
      required this.isVerify,
      required this.likeCount,
      required this.location,
      required this.medias,
      required this.username});
}

List<PostModel> fakePosts = [
  PostModel(
      avatar:
          'https://s3-alpha-sig.figma.com/img/1f61/ca60/cbc85c23d3705e0ea9b22359ff9489cc?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SsG8TPz~aoYP9pCVUVjmYoNXKYxJ~AsuV00BqwG5VYdwXXOS4xkDQ-z0SugTO3DGIodOosGjQWA6InGMqGGIYB6BiYuk92PHls~n0-cvwGb00rdSrQJbBlyHs4O9rIRCMON5OrsIWlz2R80sAaW7dCu9UdeBqD6XyBRFBPViyY6ZXBg~6QnON39M3UbT2kTVZCTukshoYDfBRyKe1f8WYhHEPmFa0Iuh-arAIlwcVz7Whb5fWwdXQ1tNAemSp7DffQEK1R~0TmW3QRTz5Xxe2USPd9V~D9coIiDtlYuvwkHFhLeUV0SyZIo48oeidUkZXuYQT9E02ypnPodUDROOjg__',
      caption: 'The game in Japan was amazing and I want to share some photos',
      isVerify: true,
      likeCount: 1500,
      location: 'Tokyo, Japan',
      medias: [
        'https://s3-alpha-sig.figma.com/img/0bf3/5a39/350911f7526f901f1ae9a3ac27b36b05?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=eyPXcE7K864EE9MvLmXPavLi2fVqVNkYrr0uqUCOsRcn-pHY9TCijsApO9eKagjkPxPUJId5gjncBzX02ffpcvJ~xe2iMZ-8kpsua~O7Xdpg6kbJhUaNIikpUdvc4~-jrCRCkCzwEenDfsuH90gCNfMs4akZ5ORkRiILRKlHQhpaEoWOZCrEt4Xb~yQzwvIhuxuUs3iyUShEQtTcGiwBlrRYlBepEMzZqtKZjP96mtKH5uAQ2gyBBPiRGNtsHMqrlPWTeuxh1i7enDJ68cKgjNmndQI3klwywFCO66CVTedBUUiQ3hWY6c3ntDJlLZFAY-OAeVWHoKwLw5a4oKNfuw__',
        'https://s3-alpha-sig.figma.com/img/2b1b/2ef6/b207d3f5800566031c12d4182c8b2d8d?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=cknB0eU1ZSEuyUBSImh4VbR1jvHNKiA~~ezYplDL8stFvwEICsdx9CovcEb-SCCj6riQWD~0qOsmMSnSxA8HLziy80TE0X7PcTxOR5vZATAkyQSGvU5E5rP~cMc~THT77rQ5XGpG6MGc~W3ZNHl8RM7gDql4utzJBPVktnAYF4FSS5bl~fA4b7AkCxBKgMmOU6aDc-TO-3D5AuyE4K4FVbX6dzlJ5J7iQ7GbV7mGnywEsZdkqRtEk9qBxeyzPqwNY7SoBpl1Z31wbtT3ewNPEG7pEcKLjoaP9ODOD3NaxQWJJ-Bcr5rtLz0mP5NxszgjoJRqE8DpXQ5pAI0RHRkGXw__'
        // 'https://sample-videos.com/video321/mp4/720/big_buck_bunny_720p_1mb.mp4'
      ],
      username: 'joshua_l')
];
