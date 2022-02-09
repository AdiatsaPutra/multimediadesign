import 'package:flutter/material.dart';
import 'package:multi/data/vid.dart';
import 'package:multi/pages/about_page.dart';
import 'package:multi/pages/main_page.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constants.dart';

class Video4Page extends StatelessWidget {
  const Video4Page({Key? key}) : super(key: key);
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
      body: VStack([
        VxBox()
            .width(MediaQuery.of(context).size.width)
            .height(200)
            .bgImage(DecorationImage(
                image: AssetImage(vid4.thumb), fit: BoxFit.fill))
            .make()
            .pOnly(bottom: 20),
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
                .bgImage(
                    DecorationImage(image: AssetImage(e), fit: BoxFit.contain))
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
              Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => MainPage()));
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
    );
  }
}
