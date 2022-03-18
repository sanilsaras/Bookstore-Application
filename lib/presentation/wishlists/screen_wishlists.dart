import 'package:bookstoreapp/core/constants.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/app_bar_widget.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/bottom_tag_widget.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/button_widgets.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/image_stack_widget.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/material_button_widget2.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class ScreenWishlists extends StatelessWidget {
  const ScreenWishlists({Key? key}) : super(key: key);

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
