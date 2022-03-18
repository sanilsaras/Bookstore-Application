import 'package:bookstoreapp/core/colors.dart';
import 'package:bookstoreapp/core/constants.dart';
import 'package:bookstoreapp/domain/list_items.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/app_bar_widget.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/bottom_tag_widget.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/button_widgets.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/image_stack_widget.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/material_button_widget.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/material_button_widget2.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class ScreenCategory extends StatelessWidget {
  const ScreenCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: "Bookstore",
        ),
      ),
      body: ListView(
        children: [
          kheight,
          const SearchWidget(),
          kheight,
          const ButtonWidget(),
          kheight,
          Container(
            alignment: Alignment.centerLeft,
            width: size.width,
            color: Colors.blueGrey[50],
            child: Column(
              children: [
                kheight,
                Text(
                  'Bookstore: free shopping',
                  style: TextStyle(
                    color: colorDBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                kheight20,
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Container(
                    width: size.width,
                    height: 300,
                    color: colorwhite,
                    child: Column(
                      children: [
                        for (int i = 0; i < 5; i++)
                          MaterialButtonWidget(title: Btitle[i], size: size),
                      ],
                    ),
                  ),
                ),
                kheight,
                Text(
                  'Other popular bookstores',
                  style: TextStyle(
                    color: colorDBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                kheight20,
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Container(
                    width: size.width,
                    height: 300,
                    color: colorwhite,
                    child: Column(
                      children: [
                        for (int i = 0; i < 5; i++)
                          MaterialButtonWidget(title: Btitle[i], size: size),
                      ],
                    ),
                  ),
                ),
                const MaterialButtonWidget2(bTitle: 'Book categories'),
                kheight,
                ImageStackWidget(size: size),
                kheight20,
                BottomTagWidget(size: size),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
