import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_color.dart';


import 'package:mahar_code_test/view/detail/widgets/actors_list_widget.dart';
import 'package:mahar_code_test/view/detail/widgets/genre_widget.dart';

import 'package:mahar_code_test/view/detail/widgets/image_poster.dart';
import 'package:mahar_code_test/view/detail/widgets/movie_title_widget.dart';
import 'package:mahar_code_test/view/detail/widgets/story_widget.dart';
import 'package:mahar_code_test/vo/now_playing_vo.dart';


class DetailPage extends StatelessWidget {
  final MovieVO movieDetail;
  const DetailPage({super.key, required this.movieDetail});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Adventure',
      'Horror',
      'Thriller',
      'Romantic',
      'Physco',
    ];

    return Scaffold(
      backgroundColor: bgColor,
      body: CustomScrollView(
        primary: true,
        slivers: [
          ImagePoster(
            movieDetail: movieDetail,
          ),
          MovieTitleWidget(
            movieDetail: movieDetail,
          ),
          GenreWidget(items: items),
          const StoryWidget(),
          ActorsListWiget(items: items),
        ],
      ),
    );
  }
}
