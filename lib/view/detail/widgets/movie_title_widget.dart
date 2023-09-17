import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mahar_code_test/config/api_constant.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/config/config_text_style.dart';
import 'package:mahar_code_test/vo/now_playing_vo.dart';

class MovieTitleWidget extends StatelessWidget {
  final MovieVO movieDetail;
  const MovieTitleWidget({
    super.key,
    required this.movieDetail,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: bgColor,
      automaticallyImplyLeading: false,
      expandedHeight: 170,
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
                Container(
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
                          Container(
                            height: 20,
                            width: 30,
                            margin:
                                EdgeInsets.only(left: 16, right: 10, top: 10),
                            decoration: BoxDecoration(
                                color: yellowColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                "IMDB",
                                textAlign: TextAlign.center,
                                style: ConfigTextStyle.boldTextStyle(
                                    10, Colors.black),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "7.2",
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
                              "2h30mins",
                              style: ConfigTextStyle.boldTextStyle(
                                  15, textGreyColor),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 70,
                        width: 110,
                        margin: EdgeInsets.only(left: 16),
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
                              style:
                                  ConfigTextStyle.boldTextStyle(13, textColor),
                            ),
                          ],
                        ),
                      )
                    ],
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
