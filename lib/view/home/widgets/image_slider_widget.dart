import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/api_constant.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/config/config_route.dart';
import 'package:mahar_code_test/view/detail/detail_page.dart';
import 'package:mahar_code_test/view/home/widgets/image_widget.dart';
import 'package:mahar_code_test/vo/movie_vo.dart';

class ImageSliderWidget extends StatefulWidget {
  final List<MovieVO> movieList;
  const ImageSliderWidget({
    super.key,
    required this.movieList,
  });

  @override
  State<ImageSliderWidget> createState() => _ImageSliderWidgetState();
}

class _ImageSliderWidgetState extends State<ImageSliderWidget> {
  double _position = 0;
  @override
  Widget build(BuildContext context) {
    List<MovieVO> firstFiveMovies = widget.movieList.take(5).toList();
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        CarouselSlider(
            items: List.generate(
              firstFiveMovies.length,
              (index) => GestureDetector(
                onTap: () {
                  Routes.transition(context,
                      DetailPage(movieDetail: widget.movieList[index]));
                },
                child: ImageWidget(
                  imageUrl: "$IMAGE_URL${firstFiveMovies[index].backdropPath}",
                ),
              ),
            ),
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(() {
                  _position = index.toDouble();
                });
              },
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
            )),
        DotsIndicator(
          dotsCount: (firstFiveMovies.isNotEmpty) ? firstFiveMovies.length : 1,
          position: _position,
          decorator: const DotsDecorator(
            color: iconBgcolor,
            activeColor: blueBoxColor,
          ),
        ),
      ],
    );
  }
}
