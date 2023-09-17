import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/api_constant.dart';
import 'package:mahar_code_test/config/config_route.dart';
import 'package:mahar_code_test/view/home/widgets/grid_view_widget.dart';
import 'package:mahar_code_test/vo/now_playing_vo.dart';
import '../../detail/detail_page.dart';

class GridWidget extends StatelessWidget {
  final List<MovieVO> movieList;
  const GridWidget({
    super.key,
    required this.movieList,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 320,
            childAspectRatio: 0.6,
            crossAxisSpacing: 40,
            mainAxisSpacing: 2),
        itemCount: movieList.length,
        itemBuilder: (BuildContext ctx, index) {
          return GestureDetector(
            onTap: () {
              Routes.transition(
                context,
                DetailPage(
                  movieDetail: movieList[index],
                ),
              );
            },
            child: GridViewWidget(
              imageUrl: "$IMAGE_URL${movieList[index].posterPath}",
              title: movieList[index].originalTitle ?? "",
              voteAverage: movieList[index].voteAverage ?? 0.0,
            ),
          );
        });
  }
}
