import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/config/config_route.dart';
import 'package:mahar_code_test/config/config_text_style.dart';
import 'package:mahar_code_test/view/search/search_page.dart';

AppBar appBarWidget(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: bgColor,
    title: Text(
      "Welcome to Movie App",
      style: ConfigTextStyle.boldTextStyle(17, textColor),
    ),
    bottom: PreferredSize(
      preferredSize: const Size(80, 80),
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
        child: Container(
          height: 48,
          margin: const EdgeInsets.fromLTRB(18, 0, 18, 0),
          padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TabBar(
            indicator: BoxDecoration(
              color: blueBoxColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(17),
            ),
            labelColor: textColor,
            labelStyle: ConfigTextStyle.boldTextStyle(16, textColor),
            dividerColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    "assets/icons/play-circle-svgrepo-com.svg",
                    color: yellowColor,
                  ),
                  const Tab(
                    text: 'Now Playing',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Tab(text: 'Popular'),
                  SvgPicture.asset(
                    "assets/icons/flame-fire-svgrepo-com.svg",
                    height: 18,
                    width: 18,
                    color: redColor,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ),
    actions: [
      IconButton(
          onPressed: () {
            Routes.transition(context, SearchPage());
          },
          icon: Container(
            height: 35,
            width: 35,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: iconBgcolor),
            child: const Icon(
              Icons.search,
              size: 20,
              color: textColor,
            ),
          ))
    ],
  );
}
