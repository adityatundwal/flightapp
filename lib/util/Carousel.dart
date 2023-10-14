import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final List<String> images = [
    'assets/Offers/offer1.jpg',
    'assets/Offers/offer2.jpg',
    'assets/Offers/offer3.jpg',
    'assets/Offers/offer4.jpg',
  ];

  List<Widget> ImgGenerator() {
    return images
        .map(
          (e) => ClipRRect(
            child: Image.asset(
              e,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Stack(
        children: [
          CarouselSlider(
            items: ImgGenerator(),
            options: CarouselOptions(
                enlargeCenterPage: true, autoPlay: true, aspectRatio: 18 / 8),
          )
        ],
      ),
    );
  }
}
