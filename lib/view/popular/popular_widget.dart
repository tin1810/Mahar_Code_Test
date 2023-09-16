import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/config/config_route.dart';
import 'package:mahar_code_test/view/detail/detail_page.dart';
import 'package:mahar_code_test/view/home/widgets/grid_view_widget.dart';
import 'package:mahar_code_test/view/home/widgets/image_slider_widget.dart';
import 'package:mahar_code_test/view/home/widgets/tabs_title_widget.dart';
import 'package:mahar_code_test/view/nowplaying/widgets/grid_widget.dart';

class PopularWidget extends StatelessWidget {
  const PopularWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageSliderWidget(),
            TabsTitle(
              title: "Popular Now...",
            ),
            GridWidget(),
          ],
        ),
      ),
    );
  }
}
