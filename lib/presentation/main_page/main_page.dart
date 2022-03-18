import 'package:bookstoreapp/core/colors.dart';
import 'package:bookstoreapp/presentation/categories/screen_categories.dart';
import 'package:bookstoreapp/presentation/home/screen_home.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/bottom_navigation.dart';
import 'package:bookstoreapp/presentation/search/screen_search.dart';
import 'package:bookstoreapp/presentation/store/screen_store.dart';
import 'package:bookstoreapp/presentation/wishlists/screen_wishlists.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  final _pages = const [
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
        // drawer: Drawer(
        //   child: Material(
        //     child: ListView(
        //       children: const [
        //         SizedBox(
        //           height: 50,
        //         ),
        //         ListTile(
        //           leading: Icon(Icons.home),
        //           title: Text('Home'),
        //         ),
        //         ListTile(
        //           leading: Icon(Icons.home),
        //           title: Text('Bookstore'),
        //         ),
        //         ListTile(
        //           leading: Icon(Icons.home),
        //           title: Text('Book Depository'),
        //         ),
        //         ListTile(
        //           leading: Icon(Icons.home),
        //           title: Text("Blackwell's books"),
        //         ),
        //         ListTile(
        //           leading: Icon(Icons.home),
        //           title: Text('Home'),
        //         )
        //       ],
        //     ),
        //   ),
        // ),
        backgroundColor: backgroundColor,
        body: ValueListenableBuilder(
          valueListenable: indexValueNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
        bottomNavigationBar: BottomNavigationWidget(),
      ),
    );
  }
}
