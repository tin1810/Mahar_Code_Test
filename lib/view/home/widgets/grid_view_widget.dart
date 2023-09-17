import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/config/config_text_style.dart';
import 'package:mahar_code_test/view/detail/widgets/imdb_widget.dart';

class GridViewWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double voteAverage;
  const GridViewWidget(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.voteAverage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 0, top: 0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedNetworkImage(
            height: 222,
            fit: BoxFit.cover,
            fadeInCurve: Curves.easeIn,
            imageUrl: imageUrl,
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 7, bottom: 3),
          child: Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: ConfigTextStyle.regularTextStyle(13, textColor),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IMDBWidget(),
            SizedBox(
              width: 4,
            ),
            Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              "$voteAverage",
              style: ConfigTextStyle.boldTextStyle(12, textColor),
            ),
          ],
        ),
      ]),
    );
  }
}
