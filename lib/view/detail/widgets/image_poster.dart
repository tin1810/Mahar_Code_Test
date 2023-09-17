import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/api_constant.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/config/config_route.dart';
import 'package:mahar_code_test/config/config_text_style.dart';
import 'package:mahar_code_test/vo/movie_vo.dart';

class ImagePoster extends StatelessWidget {
  final MovieVO movieDetail;
  final Function onClicked;
  final bool isFavorite;
  final int votes;
  const ImagePoster({
    super.key,
    required this.movieDetail,
    required this.onClicked,
    required this.isFavorite,
    required this.votes,
  });

  @override
  Widget build(BuildContext context) {
    final star = List.generate(
        5,
        (index) => Icon(
              index < 5 + 1 ? Icons.star : Icons.star_border,
              color: yellowColor,
              size: 23,
            ));
    return SliverAppBar(
      floating: false,
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
            onPressed: () {
              onClicked();
            },
            icon: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: isFavorite
                  ? const Icon(
                      Icons.favorite,
                      color: redColor,
                      size: 30,
                    )
                  : const Icon(
                      Icons.favorite_border,
                      color: redColor,
                      size: 30,
                    ),
            ))
      ],
      leading: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: iconBgcolor.withOpacity(0.4),
          shape: BoxShape.circle,
        ),
        child: IconButton(
            onPressed: () {
              Routes.back(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: textColor,
            )),
      ),
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: "$IMAGE_URL${movieDetail.backdropPath}",
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Positioned.fill(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20, bottom: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ...star,
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "$votes Votes",
                          style: ConfigTextStyle.boldTextStyle(20, textColor),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
