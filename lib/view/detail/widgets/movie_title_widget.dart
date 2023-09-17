import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mahar_code_test/config/api_constant.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/config/config_text_style.dart';
import 'package:mahar_code_test/vo/movie_vo.dart';

import 'imdb_widget.dart';

class MovieTitleWidget extends StatelessWidget {
  final MovieVO movieDetail;
  final String duration;
  const MovieTitleWidget({
    super.key,
    required this.movieDetail,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: bgColor,
      automaticallyImplyLeading: false,
      expandedHeight: 160,
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 16, top: 10),
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(
                              "$IMAGE_URL${movieDetail.posterPath}"),
                          fit: BoxFit.cover)),
                ),
                Expanded(
                  child: SizedBox(
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 13, left: 16),
                          child: Text(
                            movieDetail.originalTitle ?? "",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: ConfigTextStyle.boldTextStyle(18, textColor),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsets.only(left: 16, top: 10, right: 10),
                              child: IMDBWidget(),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                movieDetail.voteAverage.toString(),
                                style: ConfigTextStyle.boldTextStyle(
                                    15, textGreyColor),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: SvgPicture.asset(
                                "assets/icons/time-svgrepo-com.svg",
                                color: yellowColor,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "$duration mins",
                                style: ConfigTextStyle.boldTextStyle(
                                    15, textGreyColor),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 70,
                          width: 110,
                          margin: const EdgeInsets.only(left: 16),
                          decoration: BoxDecoration(
                              color: iconBgcolor.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Release Date",
                                style: ConfigTextStyle.boldTextStyle(
                                    11, textColor.withOpacity(0.5)),
                              ),
                              Text(
                                movieDetail.releaseDate ?? "",
                                style: ConfigTextStyle.boldTextStyle(
                                    13, textColor),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
