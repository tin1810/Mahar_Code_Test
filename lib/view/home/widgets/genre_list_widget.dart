import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/vo/genre_vo.dart';

import '../../../config/config_text_style.dart';

class GenreListWidget extends StatelessWidget {
  final List<GenreVO> genreList;
  const GenreListWidget({
    super.key,
    required this.genreList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            "Genre",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: ConfigTextStyle.regularTextStyle(17, textColor),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: genreList.map((e) {
              return Container(
                height: 40,
                width: 110,
                margin: const EdgeInsets.only(
                    left: 16, right: 0, top: 10, bottom: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: blueBoxColor)),
                child: Center(
                  child: Text(
                    e.name ?? "",
                    textAlign: TextAlign.center,
                    style: ConfigTextStyle.boldTextStyle(12, textColor),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
