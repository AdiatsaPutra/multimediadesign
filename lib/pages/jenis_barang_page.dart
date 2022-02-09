import 'package:flutter/material.dart';
import 'package:multi/data/data.dart';
import 'package:multi/pages/barang_daur_ulang_page.dart';
import 'package:multi/pages/barang_detail_page.dart';
import 'package:velocity_x/velocity_x.dart';

class JenisBarangpage extends StatelessWidget {
  const JenisBarangpage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Jenis Barang Daur Ulang'.text.color(Colors.black).make(),
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
        ...data.map(
          (e) => GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const BarangDaurUlangPage()));
            },
            child: VxBox()
                .width(MediaQuery.of(context).size.width)
                .height(200)
                .bgImage(DecorationImage(
                    image: AssetImage(e.imagePath), fit: BoxFit.fill))
                .make()
                .pOnly(bottom: 20),
          ),
        )
      ]).p32().scrollVertical(),
    );
  }
}
