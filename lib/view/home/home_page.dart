import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/view/home/widgets/appBar_widget.dart';
import 'package:mahar_code_test/view/nowplaying/now_playing.dart';
import 'package:mahar_code_test/view/popular/popular_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: appBarWidget(context),
        body: const TabBarView(
          children: [NowPlayingWidget(), PopularWidget()],
        ),
      ),
    );
  }
}
