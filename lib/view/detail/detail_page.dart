import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_color.dart';

import 'package:mahar_code_test/view/detail/widgets/image_poster.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: bgColor,
        body: CustomScrollView(
          slivers: [
            ImagePoster(),
            SliverAppBar(
              backgroundColor: bgColor,
              automaticallyImplyLeading: false,
            ),
          ],
        ));
  }
}
