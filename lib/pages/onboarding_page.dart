import 'package:flutter/material.dart';
import 'package:multi/pages/main_page.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constants.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack([
        Image.asset(
          'assets/bg-1.png',
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 1.2,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35))),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const MainPage()),
            );
          },
          child: 'Mulai'.text.xl.make(),
        )
            .box
            .width(MediaQuery.of(context).size.width / 2)
            .height(50)
            .makeCentered(),
      ]),
    );
  }
}
