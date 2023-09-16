import 'package:flutter/material.dart';
import 'package:mahar_code_test/config/config_color.dart';
import 'package:mahar_code_test/config/config_route.dart';
import 'package:mahar_code_test/config/config_text_style.dart';
import 'package:mahar_code_test/view/search/widgets/search_list_tile.dart';

class SearchPage extends StatelessWidget {
  SearchPage({
    super.key,
  });

  final searchController = TextEditingController();

  String? value;

  @override
  @override
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          backgroundColor: bgColor,
          elevation: 0,
          leading: IconButton(
              onPressed: () => Routes.back(context),
              icon: const Icon(
                size: 20,
                Icons.arrow_back,
                color: textColor,
              )),
          title: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: TextFormField(
              controller: searchController,
              onChanged: (val) {},
              autofocus: true,
              cursorColor: textColor,
              style: ConfigTextStyle.regularTextStyle(16, textColor),
              decoration: InputDecoration(
                  isDense: true,
                  suffixIconConstraints: const BoxConstraints(
                    minWidth: 2,
                    minHeight: 2,
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        searchController.clear();
                      },
                      icon: const Icon(
                        Icons.cancel,
                        size: 18,
                        color: disableColor,
                      )),
                  hintText: "Find movie in here",
                  border: InputBorder.none,
                  hintStyle: ConfigTextStyle.boldTextStyle(16, textColor)),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: const SearchListTileWidget(
                        title: 'DDD',
                      ),
                    );
                  }),
              SizedBox(
                height: height / 50,
              ),
            ],
          ),
        ));
  }
}
