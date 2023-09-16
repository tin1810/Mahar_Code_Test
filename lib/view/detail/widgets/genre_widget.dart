import 'package:flutter/material.dart';

class GenreWidget extends StatelessWidget {
  const GenreWidget({
    super.key,
    required this.items,
  });

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: items.map((e) {
            return Container(
              height: 50,
              width: 70,
              margin: const EdgeInsets.only(left: 16, right: 10, top: 10),
              decoration: const BoxDecoration(color: Colors.amber),
            );
          }).toList(),
        ),
      ),
    );
  }
}
