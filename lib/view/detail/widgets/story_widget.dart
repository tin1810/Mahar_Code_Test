// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/model/detail_model.dart';
import 'package:provider/provider.dart';

import '../../../config/config_text_style.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => DetailModel(),
      child: Consumer<DetailModel>(
        builder: (context, detail, _) {
          return SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Story ",
                    style: ConfigTextStyle.regularTextStyle(17, textColor),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    children: [
                      Text(
                        "The ultimate wish-fulfillment tale of a teenage Gran Turismo player whose gaming skills won him a series of Nissan competitions to become an actual professional racecar driver.The ultimate wish-fulfillment tale of a teenage Gran Turismo player whose gaming skills won ",
                        maxLines: detail.isReadMore ? 10 : 3,
                        style:
                            ConfigTextStyle.regularTextStyle(14, textGreyColor),
                      ),

                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: MaterialButton(
                            height: 50,
                            minWidth: 100,
                            shape: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: blueBoxColor),
                                borderRadius: BorderRadius.circular(5)),
                            // color: blueBoxColor,
                            onPressed: () {
                              detail.toggleReadMore();
                            },
                            child: Text(
                              detail.isReadMore ? "Less" : "Read More",
                              style:
                                  ConfigTextStyle.boldTextStyle(13, textColor),
                            ),
                          ),
                        ),
                      )
                      // Container(
                      //   height: 50,
                      //   width: 100,
                      //   decoration: const BoxDecoration(color: blueBoxColor),
                      //   alignment: Alignment.centerLeft,
                      //   padding: const EdgeInsets.only(left: 16),
                      //   child: GestureDetector(
                      //     child: Text(
                      //       detail.isReadMore ? "Less" : "Read More",
                      //       style: ConfigTextStyle.boldTextStyle(13, textColor),
                      //     ),
                      //     onTap: () {
                      //       detail.toggleReadMore();
                      //     },
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
