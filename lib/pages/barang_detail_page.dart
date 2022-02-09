import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi/data/data.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constants.dart';
import 'video_1_page.dart';
import 'video_2_page.dart';
import 'video_3_page.dart';
import 'video_4_page.dart';

class BarangDetailPage extends StatelessWidget {
  final Data data;

  const BarangDetailPage({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Deskripsi barang hasil \ndaur ulang'
            .text
            .color(Colors.black)
            .make(),
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
                image: AssetImage(data.thumb), fit: BoxFit.fill))
            .make()
            .pOnly(bottom: 20),
        data.content.text.lg.make(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35))),
          onPressed: data.id == 1
              ? () {
                  Get.to(() => const Video3Page());
                }
              : data.id == 2
                  ? () {
                      Get.to(() => Video2Page());
                    }
                  : data.id == 3
                      ? () {
                          Get.to(() => const Video4Page());
                        }
                      : data.id == 4
                          ? () {
                              Get.to(() => Video1Page());
                            }
                          : () {
                              Get.back();
                            },
          child: HStack([
            const Icon(Icons.play_circle, color: Colors.white).pOnly(right: 20),
            'Lihat video pembuatan'.text.base.color(Colors.white).make()
          ]),
        )
            .box
            .width(MediaQuery.of(context).size.width)
            .height(50)
            .makeCentered(),
      ]).p32().scrollVertical(),
    );
  }
}
