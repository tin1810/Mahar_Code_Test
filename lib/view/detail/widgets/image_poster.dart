import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/config/config_route.dart';
import 'package:mahar_code_test/config/config_text_style.dart';

class ImagePoster extends StatelessWidget {
  const ImagePoster({
    super.key,
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
      automaticallyImplyLeading: false,
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
      expandedHeight: 300,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            CachedNetworkImage(
              // height: 200,
              imageUrl:
                  "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/51tqzRtKMMZEYUpSYkrUE7v9ehm.jpg",
              width: double.infinity, fit: BoxFit.cover,
            ),
            Positioned.fill(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    margin: const EdgeInsets.all(20),
                    color: yellowColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Text(
                        "2023",
                        style: ConfigTextStyle.boldTextStyle(16, Colors.black),
                      ),
                    ),
                  ),
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
                          "21 Votes",
                          style: ConfigTextStyle.boldTextStyle(20, textColor),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
