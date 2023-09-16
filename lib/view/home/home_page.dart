import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/config/config_data.dart';
import 'package:mahar_code_test/config/config_text_style.dart';
import 'package:mahar_code_test/view/home/widgets/appBar_widget.dart';
import 'package:mahar_code_test/view/home/widgets/image_slider_widget.dart';
import 'package:mahar_code_test/view/home/widgets/movie_tabs_widget.dart';
import 'package:mahar_code_test/view/nowplaying/now_playing.dart';
import 'package:mahar_code_test/view/popular/popular_widget.dart';

class HomePage extends StatefulWidget {
  int? pageIndex;
  HomePage({super.key, this.pageIndex});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int current = 0;
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: appBarWidget(),
        body: const TabBarView(
          children: [NowPlayingWidget(), PopularWidget()],
        ),
     
   
      ),
    );
  }
}
