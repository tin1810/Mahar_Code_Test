import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/api_constant.dart';
import 'package:mahar_code_test/view/home/widgets/image_widget.dart';
import 'package:mahar_code_test/vo/now_playing_vo.dart';

class ImageSliderWidget extends StatelessWidget {
  final List<MovieVO> movieList;
  const ImageSliderWidget({
    super.key,
    required this.movieList,
  });

  @override
  Widget build(BuildContext context) {
    List<MovieVO> firstFiveMovies = movieList.take(5).toList();
    double screenHeight = MediaQuery.of(context).size.height;
    return CarouselSlider(
        items: List.generate(
          firstFiveMovies.length,
          (index) => ImageWidget(
            imageUrl: "$IMAGE_URL${firstFiveMovies[index].backdropPath}",
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
