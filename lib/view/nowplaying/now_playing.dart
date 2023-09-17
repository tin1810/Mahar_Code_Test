import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/config/config_route.dart';
import 'package:mahar_code_test/view/detail/detail_page.dart';
import 'package:mahar_code_test/view/home/widgets/grid_view_widget.dart';
import 'package:mahar_code_test/view/home/widgets/tabs_title_widget.dart';
import 'package:mahar_code_test/vo/now_playing_vo.dart';

import '../home/widgets/image_slider_widget.dart';
import 'widgets/grid_widget.dart';

class NowPlayingWidget extends StatelessWidget {
  final List<MovieVO> movieList;
  const NowPlayingWidget({
    super.key,
    required this.movieList,
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
            TabsTitle(
              title: "Now Playing...",
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
