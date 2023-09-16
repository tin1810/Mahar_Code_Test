import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/view/detail/detail_page.dart';
import 'package:mahar_code_test/view/favorite/favorite_page.dart';
import 'package:mahar_code_test/view/home/home_page.dart';

class BotNavBar extends StatefulWidget {
  final int? index;
  const BotNavBar({super.key, this.index});

  @override
  State<BotNavBar> createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List pages = [
      HomePage(),
      const DetailPage(),
      const FavoritePage(),
    ];
    return Scaffold(
      backgroundColor: bgColor,
      bottomNavigationBar: GNav(
        selectedIndex: currentIndex,
        onTabChange: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        tabBackgroundColor: Colors.blueGrey.shade800,
        gap: 8,
        tabs: const [
          GButton(
            padding: EdgeInsets.all(10),
            iconActiveColor: lightBlueColor,
            icon: Icons.home,
            iconColor: textColor,
            text: 'Home',
            textColor: textColor,
          ),
          GButton(
            padding: EdgeInsets.all(10),
            icon: Icons.movie,
            iconActiveColor: yellowColor,
            text: 'Detail',
            iconColor: textColor,
            textColor: textColor,
          ),
          GButton(
            padding: EdgeInsets.all(10),
            icon: Icons.favorite,
            text: 'Favorite',
            iconActiveColor: redColor,
            iconColor: textColor,
            textColor: textColor,
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
