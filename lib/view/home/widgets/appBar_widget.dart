import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/config/config_text_style.dart';

AppBar appBarWidget() {
  return AppBar(
    elevation: 0,
    backgroundColor: bgColor,
    title: Text(
      "Welcome to Movie App",
      style: ConfigTextStyle.boldTextStyle(17, textColor),
    ),
    bottom: PreferredSize(
      preferredSize: new Size(80, 80),
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
        child: Container(
          height: 48,
          margin: const EdgeInsets.fromLTRB(18, 0, 18, 0),
          padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(50),
          ),
          child: TabBar(
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: ConfigTextStyle.boldTextStyle(16, textColor),
            indicator: const ShapeDecoration(
              shape: StadiumBorder(side: BorderSide.none),
              color: blueBoxColor,
            ),
            labelStyle: ConfigTextStyle.boldTextStyle(16, textColor),
            tabs: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.watch_later),
                  Tab(
                    text: 'Now Showing',
                  ),
                ],
              ),
              const Tab(text: 'Coming Soon'),
            ],
          ),
        ),
      ),
    ),
    // bottom: const TabBar(
    //   dividerColor: Colors.amber,
    //   labelColor: blueBoxColor,
    //   indicatorColor: lightBlueColor,
    //   unselectedLabelColor: textColor,
    //   tabs: [
    //     Tab(
    //       text: "Now Playing",
    //     ),
    //     Tab(
    //       text: "Popular",
    //     ),
    //   ],
    // ),
    actions: [
      IconButton(
          onPressed: () {},
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
