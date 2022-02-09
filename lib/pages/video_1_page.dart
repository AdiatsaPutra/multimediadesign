import 'package:flutter/material.dart';
import 'package:multi/data/vid.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../constants.dart';

class Video1Page extends StatefulWidget {
  Video1Page({Key? key}) : super(key: key);

  @override
  State<Video1Page> createState() => _Video1PageState();
}

class _Video1PageState extends State<Video1Page> {
  final PageController _pageController = PageController();
  YoutubePlayerController _controller1 = YoutubePlayerController(
    initialVideoId: 'qjOw4EmuTxc',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );
  YoutubePlayerController _controller2 = YoutubePlayerController(
    initialVideoId: 'qjOw4EmuTxc',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: 'Video Daur Ulang'.text.color(Colors.black).make(),
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          automaticallyImplyLeading: false,
          leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(Icons.arrow_back)),
        ),
        body: PageView(
          controller: _pageController,
          children: [
            VStack([
              GestureDetector(
                onTap: () {
                  VxDialog.showCustom(
                    context,
                    child: Dialog(
                      child: YoutubePlayer(
                        controller: _controller1,
                        showVideoProgressIndicator: true,
                        progressIndicatorColor: Colors.amber,
                        progressColors: ProgressBarColors(
                          playedColor: Colors.amber,
                          handleColor: Colors.amberAccent,
                        ),
                      ),
                    ),
                  );
                },
                child: VxBox()
                    .width(MediaQuery.of(context).size.width)
                    .height(200)
                    .bgImage(DecorationImage(
                        image: AssetImage(vid2.thumb), fit: BoxFit.fill))
                    .make()
                    .pOnly(bottom: 20),
              ),
              VxBox()
                  .width(MediaQuery.of(context).size.width)
                  .height(50)
                  .bgImage(DecorationImage(
                      image: AssetImage(vid2.buttonPath), fit: BoxFit.fill))
                  .make()
                  .pOnly(bottom: 20),
              'Rekomendasi Video'.text.xl.bold.make().pOnly(bottom: 20),
              HStack([
                ...vid1.rekomendasiPath.map(
                  (e) => VxBox()
                      .width(130)
                      .height(100)
                      .bgImage(DecorationImage(
                          image: AssetImage(e), fit: BoxFit.contain))
                      .make()
                      .pOnly(bottom: 20),
                )
              ]).scrollHorizontal(),
              HStack([
                const SizedBox().expand(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35))),
                  onPressed: () {
                    nextPage();
                  },
                  child: HStack([
                    'Next'.text.xl.make(),
                    const Icon(Icons.arrow_forward, color: Colors.white),
                  ]),
                )
                    .box
                    .width(MediaQuery.of(context).size.width / 3)
                    .height(50)
                    .makeCentered(),
              ])
            ]).p32().scrollVertical(),
            VStack([
              GestureDetector(
                onTap: () {
                  VxDialog.showCustom(
                    context,
                    child: Dialog(
                      child: YoutubePlayer(
                        controller: _controller2,
                        showVideoProgressIndicator: true,
                        progressIndicatorColor: Colors.amber,
                        progressColors: ProgressBarColors(
                          playedColor: Colors.amber,
                          handleColor: Colors.amberAccent,
                        ),
                      ),
                    ),
                  );
                },
                child: VxBox()
                    .width(MediaQuery.of(context).size.width)
                    .height(200)
                    .bgImage(DecorationImage(
                        image: AssetImage(vid1.thumb), fit: BoxFit.fill))
                    .make()
                    .pOnly(bottom: 20),
              ),
              VxBox()
                  .width(MediaQuery.of(context).size.width)
                  .height(50)
                  .bgImage(DecorationImage(
                      image: AssetImage(vid1.buttonPath), fit: BoxFit.fill))
                  .make()
                  .pOnly(bottom: 20),
              'Rekomendasi Video'.text.xl.bold.make().pOnly(bottom: 20),
              HStack([
                ...vid1.rekomendasiPath.map(
                  (e) => VxBox()
                      .width(130)
                      .height(100)
                      .bgImage(DecorationImage(
                          image: AssetImage(e), fit: BoxFit.contain))
                      .make()
                      .pOnly(bottom: 20),
                )
              ]).scrollHorizontal(),
              HStack([
                const SizedBox().expand(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35))),
                  onPressed: () {
                    nextPage();
                  },
                  child: HStack([
                    'Next'.text.xl.make(),
                    const Icon(Icons.arrow_forward, color: Colors.white),
                  ]),
                )
                    .box
                    .width(MediaQuery.of(context).size.width / 3)
                    .height(50)
                    .makeCentered(),
              ])
            ]).p32().scrollVertical(),
            VStack([
              GestureDetector(
                onTap: () {
                  VxDialog.showCustom(
                    context,
                    child: Dialog(
                      child: YoutubePlayer(
                        controller: _controller1,
                        showVideoProgressIndicator: true,
                        progressIndicatorColor: Colors.amber,
                        progressColors: ProgressBarColors(
                          playedColor: Colors.amber,
                          handleColor: Colors.amberAccent,
                        ),
                      ),
                    ),
                  );
                },
                child: VxBox()
                    .width(MediaQuery.of(context).size.width)
                    .height(200)
                    .bgImage(DecorationImage(
                        image: AssetImage(vid3.thumb), fit: BoxFit.fill))
                    .make()
                    .pOnly(bottom: 20),
              ),
              VxBox()
                  .width(MediaQuery.of(context).size.width)
                  .height(50)
                  .bgImage(DecorationImage(
                      image: AssetImage(vid3.buttonPath), fit: BoxFit.fill))
                  .make()
                  .pOnly(bottom: 20),
              'Rekomendasi Video'.text.xl.bold.make().pOnly(bottom: 20),
              HStack([
                ...vid1.rekomendasiPath.map(
                  (e) => VxBox()
                      .width(130)
                      .height(100)
                      .bgImage(DecorationImage(
                          image: AssetImage(e), fit: BoxFit.contain))
                      .make()
                      .pOnly(bottom: 20),
                )
              ]).scrollHorizontal(),
              HStack([
                const SizedBox().expand(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35))),
                  onPressed: () {
                    nextPage();
                  },
                  child: HStack([
                    'Next'.text.xl.make(),
                    const Icon(Icons.arrow_forward, color: Colors.white),
                  ]),
                )
                    .box
                    .width(MediaQuery.of(context).size.width / 3)
                    .height(50)
                    .makeCentered(),
              ])
            ]).p32().scrollVertical(),
            VStack([
              GestureDetector(
                onTap: () {
                  VxDialog.showCustom(
                    context,
                    child: Dialog(
                      child: YoutubePlayer(
                        controller: _controller1,
                        showVideoProgressIndicator: true,
                        progressIndicatorColor: Colors.amber,
                        progressColors: ProgressBarColors(
                          playedColor: Colors.amber,
                          handleColor: Colors.amberAccent,
                        ),
                      ),
                    ),
                  );
                },
                child: VxBox()
                    .width(MediaQuery.of(context).size.width)
                    .height(200)
                    .bgImage(DecorationImage(
                        image: AssetImage(vid4.thumb), fit: BoxFit.fill))
                    .make()
                    .pOnly(bottom: 20),
              ),
              VxBox()
                  .width(MediaQuery.of(context).size.width)
                  .height(50)
                  .bgImage(DecorationImage(
                      image: AssetImage(vid4.buttonPath), fit: BoxFit.fill))
                  .make()
                  .pOnly(bottom: 20),
              'Rekomendasi Video'.text.xl.bold.make().pOnly(bottom: 20),
              HStack([
                ...vid4.rekomendasiPath.map(
                  (e) => VxBox()
                      .width(130)
                      .height(100)
                      .bgImage(DecorationImage(
                          image: AssetImage(e), fit: BoxFit.contain))
                      .make()
                      .pOnly(bottom: 20),
                )
              ]).scrollHorizontal(),
              HStack([
                const SizedBox().expand(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35))),
                  onPressed: () {
                    nextPage();
                  },
                  child: HStack([
                    'Next'.text.xl.make(),
                    const Icon(Icons.arrow_forward, color: Colors.white),
                  ]),
                )
                    .box
                    .width(MediaQuery.of(context).size.width / 3)
                    .height(50)
                    .makeCentered(),
              ])
            ]).p32().scrollVertical(),
          ],
        ));
  }

  void nextPage() {
    _pageController.animateToPage(_pageController.page!.toInt() + 1,
        duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
  }
}
