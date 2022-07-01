import 'package:flutter/material.dart';
import 'package:untitled2/hamburgerMenu.dart';
import 'package:untitled2/mainImageCarousel.dart';

//하이하이
void main() {
  runApp(MaterialApp(
      home: MyApp(),
    )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
      drawer: HamburgerMenu(),
      body: Column(
        children: [
          MailCarousel(),
        ],
      ),
    );
  }
}
