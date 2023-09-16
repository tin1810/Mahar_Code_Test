import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_route.dart';
import 'package:mahar_code_test/view/home/widgets/grid_view_widget.dart';
import '../../detail/detail_page.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
        });
  }
}
