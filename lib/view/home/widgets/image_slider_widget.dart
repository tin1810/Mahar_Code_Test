import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mahar_code_test/view/home/widgets/image_widget.dart';

class ImageSliderWidget extends StatelessWidget {
  const ImageSliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return CarouselSlider(
        items: List.generate(
          5,
          (index) => const ImageWidget(
            imageUrl:
                "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/p7I17l9jRI146JvNb4oo3STOTmV.jpg",
          ),
        ),
        options: CarouselOptions(
          height: screenHeight / 3,
          aspectRatio: 16 / 9,
          viewportFraction: 0.92,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 5),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.2,
          scrollDirection: Axis.horizontal,
        ));
  }
}
