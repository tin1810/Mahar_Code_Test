// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_color.dart';

import 'package:mahar_code_test/provider/detail_provider.dart';
import 'package:provider/provider.dart';
import '../../../config/config_text_style.dart';

class StoryWidget extends StatelessWidget {
  final bool isReadMore;
  final Function onClicked;
  final String movieStory;
  const StoryWidget({
    super.key,
    required this.isReadMore,
    required this.onClicked,
    required this.movieStory,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Movie Story",
              style: ConfigTextStyle.regularTextStyle(17, textColor),
            ),
            const SizedBox(
              height: 10,
            ),
            Wrap(
              children: [
                Text(
                  movieStory,
                  maxLines: isReadMore ? 10 : 3,
                  style: ConfigTextStyle.regularTextStyle(14, textGreyColor),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: MaterialButton(
                      height: 50,
                      minWidth: 100,
                      shape: OutlineInputBorder(
                          borderSide: const BorderSide(color: blueBoxColor),
                          borderRadius: BorderRadius.circular(5)),
                      // color: blueBoxColor,
                      onPressed: () {
                        onClicked();
                      },
                      child: Text(
                        isReadMore ? "Less" : "Read More",
                        style: ConfigTextStyle.boldTextStyle(13, textColor),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
