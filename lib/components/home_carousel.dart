// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeCarousel extends StatelessWidget {
  HomeCarousel({
    Key? key,
  }) : super(key: key);

  final urlImages = <String>[
    'assets/images/home-banner-0.png',
    'assets/images/home-banner-1.png',
    'assets/images/home-banner-2.png',
    'assets/images/home-banner-3.png',
    'assets/images/home-banner-4.png',
    'assets/images/home-banner-5.png',
    'assets/images/home-banner-6.png',
    'assets/images/home-banner-7.png',
    'assets/images/home-banner-8.png',
    'assets/images/home-banner-9.png',
    'assets/images/home-banner-10.png',
    'assets/images/home-banner-11.png',
    'assets/images/home-banner-12.png',
    'assets/images/home-banner-13.png',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: urlImages.length,
        itemBuilder: (context, index, realIndex) {
          final urlImage = urlImages[index];
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 2),
            // color: Colors.grey,
            // child: Image.network(
            //   urlImage,
            //   fit: BoxFit.contain,
            // ),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(urlImage), fit: BoxFit.contain),
            ),
          );
        },
        options: CarouselOptions(
            height: 130,
            autoPlay: true,
            // reverse: true,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            autoPlayInterval: const Duration(seconds: 2)));
  }
}
