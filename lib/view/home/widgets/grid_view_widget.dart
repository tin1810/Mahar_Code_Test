import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/config/config_text_style.dart';

class GridViewWidget extends StatelessWidget {
  final String imageUrl;
  const GridViewWidget({super.key, required this.imageUrl});

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
            // imageUrl: "${ConfigUrl.imagebaseUrl}/$url",
            // placeholder: (context, url) =>
            //     Image.asset("assets/images/Placeholder.jpg"),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 7, bottom: 3),
          child: Text(
            "Hi hi",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: ConfigTextStyle.regularTextStyle(13, textColor),
          ),
        ),
        Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          "Hi hi",
          style: ConfigTextStyle.boldTextStyle(12, textColor),
        ),
      ]),
    );
  }
}
