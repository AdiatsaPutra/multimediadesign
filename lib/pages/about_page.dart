import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'About'.text.color(Colors.black).make(),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        automaticallyImplyLeading: false,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back)),
      ),
      body: VStack([
        'Aplikasi ini kami buat karena dilatarbelakangi oleh kurangnya pemahaman generasi muda terhadap daur ulang sampah. sehingga dengan aplikasi ini diharapkan pengguna menjadi memiliki pemahaman tentang bagaimana mendaur ulang sampah. \n\nTeam development \n1. Karmilatul hayyat \n2. Nafi Aldiansyah \n3. Nando Alhasanain'
            .text
            .lg
            .align(TextAlign.justify)
            .color(Colors.black)
            .make()
            .p32()
      ]),
    );
  }
}
