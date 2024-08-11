import 'package:flutter/material.dart';

class SpotifyProfile extends StatelessWidget {
  const SpotifyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            stretch: true,
            backgroundColor: Colors.black,
            pinned: true,
            expandedHeight: 250,
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                )),
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: [
                StretchMode.zoomBackground,
                StretchMode.fadeTitle,
              ],
              title: Text(
                'Jay Chou'
              ),
              background: Image.network(
                'https://s3-alpha-sig.figma.com/img/5324/7df2/317c1af10c98d1b327dad5714aacc029?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=flBKIroOzZivC1VxB6jyL6JrE3b9DW-xLM5JiTNxjHTK0gamNvZS8p4GAXUef1Oh4CdABEeT6vsxVmNNz62-u8wInX2ouMhX1kWpSks1F2Sj39xBp0scxTtSaN-Xf-9N8Hpiw6rVo4VEZJy~B7x2OUqLSWvF7IGtHgU5FizUc-BlEs7lXPeYxaEsrx61i9Dtz22s9MMALdyk2xEfy9QbueIgWGedxsA8cVufzmCWIabgY6uJB2EShw2Rdh5YyajnDS88Ys50bhqsQMNlzLy68y~S44ZVWWTvxmNyPbzv-mTNAQ-F0isKuRVnLidpswXq7FlxBGzlQNUDPgmrb-LUcQ__',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '2.7M monthly listners',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(width: 3, color: Colors.grey)),
                        width: 35,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://s3-alpha-sig.figma.com/img/2485/8e3e/f7931c4b42f319cdb50e57e77b914122?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=EuQmeg1roUi0LeKeNwdYMOIFCRhh~1W-dlpghCvvfClX-FbyxF9L2ZKfqwFoOSb9PzyKObzoDAJQn-wlCLkEbUjVAezRIuQYRu6ciOuTktlTOa5YZQeNPcFhzISLR5b55RgDo2PyLhXEebrSf3-fruMzIP1hpKpZFTrFISA6NFl5tp23vRSiQhone8XCnC0NnG6NWokh51bJUqpDnbTgr7DbYPxeyBcP80XL2bVOy4pSsf-x4L5E5iLUrL7h7L7P3ZwXh7gBwOxJdnyeUFH0HoQaoCMu4Lbs-icrUYEnIPfLt5hx7AL8nLVGPEjpwRtNXymCDpQz-WzgeEb5oqNttA__',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      OutlinedButton(
                          style: const ButtonStyle(
                              overlayColor:
                                  MaterialStatePropertyAll(Colors.red)),
                          onPressed: () {},
                          child: const Text('Follow')),
                      const SizedBox(
                        width: 20,
                      ),
                      const Icon(
                        Icons.more_horiz,
                        color: Colors.white60,
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.shuffle,
                            color: Colors.white70,
                          )),
                      const CircleAvatar(
                        backgroundColor: Colors.green,
                        child: Icon(Icons.play_arrow),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverList.builder(
            itemCount: 10,
            itemBuilder: (context, index) => AspectRatio(
              aspectRatio: 16 / 4,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                color: Colors.grey,
                padding: EdgeInsets.symmetric(horizontal: 8),
              ),
            ),
          )
        ],
      ),
    );
  }
}
