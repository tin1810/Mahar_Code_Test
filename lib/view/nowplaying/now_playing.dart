import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/config/config_route.dart';
import 'package:mahar_code_test/config/config_text_style.dart';
import 'package:mahar_code_test/view/detail/detail_page.dart';
import 'package:mahar_code_test/view/home/widgets/grid_view_widget.dart';
import 'package:mahar_code_test/view/home/widgets/tabs_title_widget.dart';

import '../home/widgets/image_slider_widget.dart';

class NowPlayingWidget extends StatelessWidget {
  const NowPlayingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ImageSliderWidget(),
            const TabsTitle(
              title: "Now Playing...",
            ),
            GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 270,
                    childAspectRatio: 0.65,
                    crossAxisSpacing: 40,
                    mainAxisSpacing: 2),
                itemCount: 10,
                itemBuilder: (BuildContext ctx, index) {
                  return InkWell(
                    onTap: () {
                      Routes.transition(context, const DetailPage());
                    },
                    child: const GridViewWidget(
                      imageUrl:
                          "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/p7I17l9jRI146JvNb4oo3STOTmV.jpg",
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
