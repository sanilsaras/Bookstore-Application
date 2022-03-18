import 'package:bookstoreapp/core/colors.dart';
import 'package:bookstoreapp/core/constants.dart';
import 'package:bookstoreapp/domain/list_items.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/app_bar_widget.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/bottom_tag_widget.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/container_row_textbutton.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/image_stack_widget.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/material_button_widget.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/material_button_widget2.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/popular_category_widget.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: "Search",
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                kheight,
                SearchWidget(),
                kheight,
              ],
            ),
          ),
          treandingSearchMethod(size),
          const MaterialButtonWidget2(
            bTitle: 'Advanced search',
          ),
          popularAuthorsMethod(size),
          kheight20,
          PopularCategoryWidget(
            size: size,
            bHeading: 'Top categories',
          ),
          const MaterialButtonWidget2(
            bTitle: 'Book categories',
          ),
          kheight20,
          ImageStackWidget(size: size),
          PopularCategoryWidget(
            size: size,
            bHeading: 'Popular categories',
          ),
          const MaterialButtonWidget2(
            bTitle: 'Book categories',
          ),
          BottomTagWidget(size: size),
        ],
      ),
    );
  }

  Container popularAuthorsMethod(Size size) {
    return Container(
      alignment: Alignment.centerLeft,
      width: size.width,
      height: size.width * .6,
      color: Colors.blueGrey[50],
      child: Column(
        children: [
          kheight20,
          const Center(
            child: Text(
              'Popular authors',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          kheight20,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContainerRowTextbutton(
                size: size,
                buttonTitle1: 'Stephen King',
                buttonTitle2: 'Margaret Atwood',
              ),
              kheight,
              ContainerRowTextbutton(
                size: size,
                buttonTitle1: 'J K Rowling',
                buttonTitle2: 'Jane Austine',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container treandingSearchMethod(Size size) {
    return Container(
      alignment: Alignment.centerLeft,
      width: size.width,
      height: size.width * .8,
      color: Colors.blueGrey[50],
      child: Column(
        children: [
          kheight20,
          const Center(
            child: Text(
              'Treanding searches',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          kheight20,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContainerRowTextbutton(
                size: size,
                buttonTitle1: 'Witcher',
                buttonTitle2: 'Hakumei',
              ),
              kheight,
              ContainerRowTextbutton(
                size: size,
                buttonTitle1: 'Harry Potter',
                buttonTitle2: 'The cruel prince',
              ),
              kheight,
              ContainerRowTextbutton(
                size: size,
                buttonTitle1: "Tarot",
                buttonTitle2: 'The last wish',
              ),
              kheight,
              ContainerRowTextbutton(
                size: size,
                buttonTitle1: 'Lord of the rings',
                buttonTitle2: 'Life without limits',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
