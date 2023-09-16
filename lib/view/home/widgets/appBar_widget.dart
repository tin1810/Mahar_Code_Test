import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/config/config_route.dart';
import 'package:mahar_code_test/config/config_text_style.dart';
import 'package:mahar_code_test/view/search/search_page.dart';
import 'package:page_transition/page_transition.dart';

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
            padding: const EdgeInsets.all(2),
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: ConfigTextStyle.boldTextStyle(16, textColor),
            indicator: ShapeDecoration(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              color: blueBoxColor.withOpacity(0.5),
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: ConfigTextStyle.boldTextStyle(16, textColor),
            labelColor: textColor,
            tabs: const [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.watch_later),
                  Tab(
                    text: 'Now Playing',
                  ),
                ],
              ),
              Tab(text: 'Popular'),
            ],
          ),
        ),
      ),
    ),
    actions: [
      IconButton(
          onPressed: () {
            Routes.transition(context, const SearchPage());
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
