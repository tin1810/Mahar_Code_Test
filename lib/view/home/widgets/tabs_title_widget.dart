import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_text_style.dart';

class TabsTitle extends StatelessWidget {
  final String title;
  const TabsTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
      child: Text(
        title,
        style: ConfigTextStyle.regularTextStyle(16, Colors.white),
      ),
    );
  }
}
