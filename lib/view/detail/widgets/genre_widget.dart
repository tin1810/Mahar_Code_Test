import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/config/config_text_style.dart';

class GenreWidget extends StatelessWidget {
  const GenreWidget({
    super.key,
    required this.items,
  });

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "Genre",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: ConfigTextStyle.regularTextStyle(17, textColor),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: items.map((e) {
                return Container(
                  height: 40,
                  width: 90,
                  margin: const EdgeInsets.only(
                      left: 16, right: 0, top: 10, bottom: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: yellowColor)),
                  child: Center(
                    child: Text(
                      e,
                      textAlign: TextAlign.center,
                      style: ConfigTextStyle.boldTextStyle(12, textColor),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
