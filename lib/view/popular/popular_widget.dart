import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/view/home/widgets/genre_list_widget.dart';
import 'package:mahar_code_test/view/home/widgets/image_slider_widget.dart';
import 'package:mahar_code_test/view/home/widgets/tabs_title_widget.dart';
import 'package:mahar_code_test/view/nowplaying/widgets/grid_widget.dart';
import 'package:mahar_code_test/vo/genre_vo.dart';
import 'package:mahar_code_test/vo/movie_vo.dart';

class PopularWidget extends StatelessWidget {
  final List<MovieVO> movieList;
  final List<GenreVO> genreList;
  const PopularWidget({
    super.key,
    required this.movieList,
    required this.genreList,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageSliderWidget(
              movieList: movieList,
            ),
            const SizedBox(
              height: 10,
            ),
            GenreListWidget(genreList: genreList),
            const TabsTitle(
              title: "Popular Now...",
            ),
            GridWidget(
              movieList: movieList,
            ),
          ],
        ),
      ),
    );
  }
}
