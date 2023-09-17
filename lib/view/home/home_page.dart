import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/provider/movie_provider.dart';

import 'package:mahar_code_test/view/home/widgets/appBar_widget.dart';
import 'package:mahar_code_test/view/nowplaying/now_playing.dart';
import 'package:mahar_code_test/view/popular/popular_widget.dart';
import 'package:provider/provider.dart';

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
    return ChangeNotifierProvider(
        create: (context) => MovieProvider(),
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: bgColor,
            appBar: appBarWidget(context),
            body: Selector<MovieProvider, bool>(
              selector: (context, provider) => provider.isLoading,
              builder: (context, isLoading, child) => Stack(
                children: [
                  TabBarView(
                    children: [
                      Consumer<MovieProvider>(
                        builder: (context, provider, child) => NowPlayingWidget(
                          movieList: provider.nowPlaying,
                        ),
                      ),
                      Consumer<MovieProvider>(
                        builder: (context, provider, child) => PopularWidget(
                          movieList: provider.popular,
                        ),
                      )
                    ],
                  ),
                  Visibility(
                    visible: isLoading,
                    child: const Align(
                      alignment: Alignment.center,
                      child: CircularProgressIndicator(),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
