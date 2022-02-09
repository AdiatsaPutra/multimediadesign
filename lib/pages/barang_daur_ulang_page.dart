import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi/data/data.dart';
import 'package:multi/pages/barang_detail_page.dart';
import 'package:multi/pages/video_1_page.dart';
import 'package:multi/pages/video_2_page.dart';
import 'package:multi/pages/video_3_page.dart';
import 'package:multi/pages/video_4_page.dart';
import 'package:multi/pages/video_2_page.dart';
import 'package:velocity_x/velocity_x.dart';

class BarangDaurUlangPage extends StatelessWidget {
  const BarangDaurUlangPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Barang hasil daur ulang'.text.color(Colors.black).make(),
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
        ...barangHasilDaurUlang.map(
          (e) => GestureDetector(
            onTap: () {
              Get.to(() => BarangDetailPage(data: e));
            },
            child: ZStack([
              VxBox()
                  .width(MediaQuery.of(context).size.width)
                  .height(200)
                  .bgImage(DecorationImage(
                      image: AssetImage(e.thumb), fit: BoxFit.fill))
                  .make()
                  .pOnly(bottom: 20),
              GestureDetector(
                onTap: e.id == 1
                    ? () {
                        Get.to(() => const Video3Page());
                      }
                    : e.id == 2
                        ? () {
                            Get.to(() => Video2Page());
                          }
                        : e.id == 3
                            ? () {
                                Get.to(() => const Video4Page());
                              }
                            : e.id == 4
                                ? () {
                                    Get.to(() => Video1Page());
                                  }
                                : () {
                                    Get.back();
                                  },
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.play_circle,
                    color: Colors.white,
                  ),
                ),
              ).p16()
            ]),
          ),
        )
      ]).p32().scrollVertical(),
    );
  }
}
