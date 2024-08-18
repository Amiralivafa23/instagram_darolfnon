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
        'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp',
        'https://www.taxmann.com/emailer/images/FEMA.mp4',
        // 'https://sample-videos.com/video321/mp4/720/big_buck_bunny_720p_1mb.mp4'
      ],
      username: 'joshua_l')
];
