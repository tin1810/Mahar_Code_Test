import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/config/config_text_style.dart';

class MovieTitleWidget extends StatelessWidget {
  const MovieTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
 
    return SliverAppBar(
      floating: true,
      backgroundColor: bgColor,
      automaticallyImplyLeading: false,
      expandedHeight: 80,
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13, left: 16),
              child: Text(
                "Gran Turismo",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: ConfigTextStyle.boldTextStyle(18, textColor),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/time-svgrepo-com.svg",
                    color: yellowColor,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "2h30mins",
                    style: ConfigTextStyle.boldTextStyle(15, textGreyColor),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
