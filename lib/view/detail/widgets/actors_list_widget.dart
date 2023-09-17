import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/config/config_data.dart';

import '../../../config/config_text_style.dart';

class ActorsListWiget extends StatelessWidget {
  final List<String> items;

  const ActorsListWiget({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 15),
            child: Text(
              "Casts",
              style: ConfigTextStyle.regularTextStyle(17, textColor),
            ),
          ),
          Container(
            height: 250.0,
            margin: const EdgeInsets.only(
                left: 16, top: 10, bottom: 30), // Set the height as needed
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                for (String item in items)
                  Container(
                    width: 150.0,
                    height: 100, // Set the width as needed
                    margin: const EdgeInsets.all(8.0),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/nJeiS9Zi1GTKD7JXFHyVJ1Edd0H.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
