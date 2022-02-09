import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Help'.text.color(Colors.black).make(),
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
      body: VStack([]),
    );
  }
}
