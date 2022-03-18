import 'package:bookstoreapp/core/colors.dart';
import 'package:bookstoreapp/core/constants.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/app_bar_widget.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/button_widgets.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class ImgItems {
  final String imageurl;
  final String title;

  const ImgItems({required this.imageurl, required this.title});
}

class ScreenHome extends StatelessWidget {
  ScreenHome({Key? key}) : super(key: key);
  List<ImgItems> items = const [
    ImgItems(
        imageurl:
            'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1311999970l/172763.jpg',
        title: 'Manga BestSellers'),
    ImgItems(
        imageurl:
            'https://s18670.pcdn.co/wp-content/uploads/the-name-jar-396x512.jpg',
        title: 'Free Shipping'),
    ImgItems(
        imageurl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQsWvuWAWhkZMMl6-1OvvpE4o9vxXrgW7IaQ&usqp=CAU',
        title: 'Coming Soon'),
    ImgItems(
        imageurl:
            'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1311999970l/172763.jpg',
        title: 'Popular in your country')
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: backgroundColor,
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
            const ButtonWidget(),
            ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return BuildWidget(item: items[index]);
                },
                separatorBuilder: (context, index) => SizedBox(
                      width: 20,
                    ),
                itemCount: 4),
          ],
        ));
  }
}

class BuildWidget extends StatelessWidget {
  const BuildWidget({Key? key, required this.item}) : super(key: key);
  final ImgItems item;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        height: size.height * .30,
        child: Expanded(
          child: Image.network(
            item.imageurl,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
