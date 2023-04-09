import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class CarouselWidget extends StatelessWidget {
  // static var viewPortRatio;

  const CarouselWidget({Key? key, required this.viewPortRatio}) : super(key: key);
  final double viewPortRatio;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 25 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: viewPortRatio,
      ),
      items: [
        Container(
          // margin: const EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: const DecorationImage(
              image: NetworkImage("https://ik.imagekit.io/cipherschools/CipherSchools/languify-1"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
