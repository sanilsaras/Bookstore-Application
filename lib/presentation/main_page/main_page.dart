import 'package:bookstoreapp/core/colors.dart';
import 'package:bookstoreapp/presentation/categories/screen_categories.dart';
import 'package:bookstoreapp/presentation/home/screen_home.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/app_bar_widget.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/bottom_navigation.dart';
import 'package:bookstoreapp/presentation/search/screen_search.dart';
import 'package:bookstoreapp/presentation/store/screen_store.dart';
import 'package:bookstoreapp/presentation/wishlists/screen_wishlists.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  final _pages = [
    ScreenHome(),
    ScreenStore(),
    ScreenSearch(),
    ScreenCategory(),
    ScreenWishlists(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: ValueListenableBuilder(
          valueListenable: IndexValueNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
        bottomNavigationBar: BottomNavigationWidget(),
      ),
    );
  }
}
