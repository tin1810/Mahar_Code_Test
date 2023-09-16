// import 'package:flutter/material.dart';
// import 'package:mahar_code_test/config/config_color.dart';
// import 'package:mahar_code_test/config/config_data.dart';
// import 'package:mahar_code_test/config/config_text_style.dart';

// class MovieTabsWidget extends StatelessWidget {
//   final Function click;
//   const MovieTabsWidget({
//     super.key,
//     required this.click,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: List.generate(
//             movieTabs(context).length,
//             (index) => GestureDetector(
//               setState(() {    onTap: () {
                     
//                         current = index;

//                         loadOrderHistory();
//                       });
//                   },
//                   child: AnimatedContainer(
//                     duration: const Duration(milliseconds: 300),
//                     margin: const EdgeInsets.all(5),
//                     width: 150,
//                     height: 48,
//                     decoration: BoxDecoration(
//                         color: blueBoxColor,
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(color: Colors.white, width: 1.5)),
//                     child: Center(
//                       child: Text(
//                         movieTabs(context)[index],
//                         style:
//                             ConfigTextStyle.regularTextStyle(16, Colors.black),
//                       ),
//                     ),
//                   ),
//                 )));

//     // Text(
//     //       movieTabs(context)[index],
//     //       style: ConfigTextStyle.boldTextStyle(18, Colors.white),
//     // )));
//   }
// }
