import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/config/config_data.dart';
import 'package:mahar_code_test/provider/detail_provider.dart';
import 'package:mahar_code_test/view/detail/widgets/actors_list_widget.dart';
import 'package:mahar_code_test/view/detail/widgets/genre_widget.dart';
import 'package:mahar_code_test/view/detail/widgets/image_poster.dart';
import 'package:mahar_code_test/view/detail/widgets/movie_title_widget.dart';
import 'package:mahar_code_test/view/detail/widgets/story_widget.dart';
import 'package:mahar_code_test/vo/now_playing_vo.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  final MovieVO movieDetail;
  const DetailPage({super.key, required this.movieDetail});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DetailProvider(movieDetail.id ?? 2),
      child: Scaffold(
        backgroundColor: bgColor,
        body: Selector<DetailProvider, bool>(
            selector: (context, provider) => provider.isLoading,
            builder: (context, isLoading, child) {
              if (isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return CustomScrollView(
                  primary: true,
                  slivers: [
                    Consumer<DetailProvider>(
                        builder: (context, provider, child) => ImagePoster(
                              movieDetail: movieDetail,
                              onClicked: () {
                                provider.toggleFavorite();
                              },
                              isFavorite: provider.isFavorite,
                              votes: provider.movieDetailVO?.voteCount ?? 0,
                            )),
                    Consumer<DetailProvider>(
                      builder: (context, provider, child) => MovieTitleWidget(
                        movieDetail: movieDetail,
                        duration:
                            provider.movieDetailVO?.runtime?.toString() ?? "",
                      ),
                    ),
                    Consumer<DetailProvider>(
                        builder: (context, provider, child) => GenreWidget(
                            items: provider.movieDetailVO?.genres
                                    ?.map((e) => e.name ?? "")
                                    .toList() ??
                                [])),
                    Consumer<DetailProvider>(
                        builder: (context, provider, child) => StoryWidget(
                              isReadMore: provider.isReadMore,
                              onClicked: () {
                                provider.toggleReadMore();
                              },
                              movieStory: movieDetail.overview ?? "",
                            )),
                    ActorsListWiget(items: Actors),
                  ],
                );
              }
            }),
      ),
    );
  }
}
