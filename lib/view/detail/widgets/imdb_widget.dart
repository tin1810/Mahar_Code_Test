import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/config/config_text_style.dart';

class IMDBWidget extends StatelessWidget {
  const IMDBWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 30,
      // margin: const EdgeInsets.only(left: 16, right: 10, top: 10),
      decoration: BoxDecoration(
          color: yellowColor, borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: Text(
          "IMDB",
          textAlign: TextAlign.center,
          style: ConfigTextStyle.boldTextStyle(10, Colors.black),
        ),
      ),
    );
  }
}
