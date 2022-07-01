import 'package:flutter/material.dart';
import 'package:untitled2/hamburgerMenu.dart';
import 'package:untitled2/mainImageCarousel.dart';


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
      drawer: HamburgerMenu(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('ccc'),
            )
          ),
          SliverToBoxAdapter(child: MainCarousel()),
          SliverList(delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(title: Text('text $index')),
              childCount: 150
              ,
            ),

          )
        ],


      ),
    );
  }
}
