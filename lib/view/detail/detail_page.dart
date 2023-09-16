import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/config/config_text_style.dart';
import 'package:mahar_code_test/view/detail/widgets/genre_widget.dart';

import 'package:mahar_code_test/view/detail/widgets/image_poster.dart';
import 'package:mahar_code_test/view/detail/widgets/movie_title_widget.dart';
import 'package:mahar_code_test/view/detail/widgets/story_widget.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 3',
      'Item 3',
    ];

    return Scaffold(
      backgroundColor: bgColor,
      body: CustomScrollView(
        primary: true,
        slivers: [
          const ImagePoster(),
          const MovieTitleWidget(),
          GenreWidget(items: items),
          const StoryWidget(),
        ],
      ),
    );
  }
}
