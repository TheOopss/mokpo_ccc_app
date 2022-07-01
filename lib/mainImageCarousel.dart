import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';

final imageList = [
  Image.asset('assets/images/yellowCat.jpg', fit: BoxFit.scaleDown),
  Image.asset('assets/images/blackCat.jpg', fit: BoxFit.scaleDown),
];

class MailCarousel extends StatelessWidget {
  const MailCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 400.0,
        autoPlay: true,
        autoPlayAnimationDuration: Duration(milliseconds: 1000),

      ),
      items: imageList.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                  ),
                  child: i,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
