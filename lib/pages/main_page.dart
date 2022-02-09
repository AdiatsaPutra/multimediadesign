import 'package:flutter/material.dart';
import 'package:multi/pages/about_page.dart';
import 'package:multi/pages/barang_daur_ulang_page.dart';
import 'package:multi/pages/jenis_barang_page.dart';
import 'package:multi/pages/video_1_page.dart';
import 'package:multi/pages/video_2_page.dart';
import 'package:velocity_x/velocity_x.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack([
        const SizedBox(height: 20),
        VxBox()
            .width(MediaQuery.of(context).size.width)
            .height(100)
            .bgImage(const DecorationImage(
                image: AssetImage('assets/bg-2.png'), fit: BoxFit.contain))
            .makeCentered()
            .px16(),
        VxBox()
            .width(MediaQuery.of(context).size.width)
            .height(300)
            .bgImage(const DecorationImage(
                image: AssetImage('assets/bg-3.png'), fit: BoxFit.fill))
            .makeCentered(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const JenisBarangpage()));
                  },
                  child: VxBox()
                      .width(80)
                      .height(80)
                      .bgImage(const DecorationImage(
                          image: AssetImage('assets/bg-4.png'),
                          fit: BoxFit.fill))
                      .makeCentered(),
                ),
                'Jenis Barang \nDaur Ulang'
                    .text
                    .align(TextAlign.center)
                    .color(Colors.grey)
                    .makeCentered()
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const BarangDaurUlangPage()));
              },
              child: Column(
                children: [
                  VxBox()
                      .width(80)
                      .height(80)
                      .bgImage(const DecorationImage(
                          image: AssetImage('assets/bg-5.png'),
                          fit: BoxFit.fill))
                      .makeCentered(),
                  'Barang Hasil \nDaur Ulang'
                      .text
                      .align(TextAlign.center)
                      .color(Colors.grey)
                      .makeCentered()
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Video2Page()));
              },
              child: Column(
                children: [
                  VxBox()
                      .width(80)
                      .height(80)
                      .bgImage(const DecorationImage(
                          image: AssetImage('assets/bg-6.png'),
                          fit: BoxFit.cover))
                      .makeCentered(),
                  'Cara \nDaur Ulang'
                      .text
                      .align(TextAlign.center)
                      .color(Colors.grey)
                      .makeCentered()
                ],
              ),
            ),
          ],
        ).px32(),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                builder: (context) => VxBox(
                        child: HStack([
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const AboutPage()));
                            },
                            child: VxBox()
                                .width(80)
                                .height(80)
                                .bgImage(const DecorationImage(
                                    image: AssetImage('assets/bg-8.png'),
                                    fit: BoxFit.fill))
                                .makeCentered(),
                          ),
                          'Help'.text.align(TextAlign.center).makeCentered()
                        ],
                      ),
                      const SizedBox(width: 30),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const AboutPage()));
                            },
                            child: VxBox()
                                .width(80)
                                .height(80)
                                .bgImage(const DecorationImage(
                                    image: AssetImage('assets/bg-9.png'),
                                    fit: BoxFit.fill))
                                .makeCentered(),
                          ),
                          'About'.text.align(TextAlign.center).makeCentered()
                        ],
                      ),
                    ])).p32.make());
          },
          child: VStack(
            [
              VxBox()
                  .width(80)
                  .height(80)
                  .bgImage(const DecorationImage(
                      image: AssetImage('assets/bg-7.png'), fit: BoxFit.fill))
                  .make(),
              'More'.text.align(TextAlign.center).color(Colors.grey).make(),
            ],
            crossAlignment: CrossAxisAlignment.center,
          ).pOnly(left: 32),
        ),
      ]).p16(),
    );
  }
}
