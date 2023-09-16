import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/config/config_text_style.dart';

class SearchListTileWidget extends StatelessWidget {
  final String title;
  const SearchListTileWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      margin: const EdgeInsets.only(left: 16, right: 16, top: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              height: double.infinity,
              width: 100,
              fit: BoxFit.cover,
              fadeInCurve: Curves.easeIn,
              imageUrl:
                  "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hUJ0UvQ5tgE2Z9WpfuduVSdiCiU.jpg",
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Text(
              title,
              maxLines: 2,
              style: ConfigTextStyle.boldTextStyle(14, textColor),
            ),
          )
        ],
      ),
    );
  }
}
