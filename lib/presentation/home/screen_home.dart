import 'dart:ui';
import 'package:bookstoreapp/core/colors.dart';
import 'package:bookstoreapp/core/constants.dart';
import 'package:bookstoreapp/domain/list_items.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/app_bar_widget.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/bottom_tag_widget.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/button_column_widget.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/category_container_widget.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/button_widgets.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/container_row_textbutton.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/container_widget.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/image_stack_widget.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/image_stack_widget2.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/material_button_widget.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/popular_category_widget.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/scroll_dot_widgets.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: "Bookstore",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: ListView(
          children: [
            kheight,
            const SearchWidget(),
            kheight,
            const ButtonWidget(),
            kheight,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  for (int i = 0; i < 4; i++) ImageRowMethod(size, items[i]),
                ],
              ),
            ),
            kheight,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 4; i++) ScrollDotWidgets1(size: size),
              ],
            ),
            // Container(
            //   alignment: Alignment.center,
            //   width: size.width * .5,
            //   height: size.width * .05,
            //   child: ListView.separated(
            //     scrollDirection: Axis.horizontal,
            //     itemBuilder: (ctx, index) => ScrollDotWidgets1(size: size),
            //     separatorBuilder: (ctx, index) => kwidth,
            //     itemCount: 4,
            //   ),
            // ),
            kheight20,
            TitleCompareMethod(),
            kheight20,
            buttonColumnMethod(size),
            kheight,
            MaterialButton(
              color: Colors.yellow,
              onPressed: () {},
              child: const Text('List of bookstores'),
            ),
            faqContainerMethod(size),
            ImageStackWidget2(size: size),
            MaterialButtonWidget(title: 'Reading Lists', size: size),
            kheight20,
            PopularCategoryWidget(size: size, bHeading: 'Popular categories'),
            kheight20,
            containerRowTextbuttonMethod(size),
            kheight20,
            ImageStackWidget(size: size),
            Container(
              alignment: Alignment.center,
              width: size.width,
              height: size.width * .5,
              color: Colors.blueGrey[100],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                    child: Text(
                      'Best-selling authors',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  kheight20,
                  ContainerRowTextbutton(
                    size: size,
                    buttonTitle1: 'Stephen King',
                    buttonTitle2: 'Margaret Atwood',
                  ),
                  kheight,
                  ContainerRowTextbutton(
                    size: size,
                    buttonTitle1: 'J.K. Rowling',
                    buttonTitle2: 'Jane Austen',
                  ),
                ],
              ),
            ),
            kheight20,
            Container(
              alignment: Alignment.centerLeft,
              width: size.width,
              height: size.width * 1.5,
              color: Colors.blueGrey[50],
              child: Column(
                children: [
                  const Center(
                    child: Text(
                      'Book categories',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  kheight20,
                  Container(
                    width: size.width,
                    height: 500,
                    color: colorwhite,
                    child: Column(
                      children: [
                        for (int i = 0; i < 10; i++)
                          MaterialButtonWidget(title: Btitle[i], size: size),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ImageStackWidget(size: size),
            kheight20,
            BottomTagWidget(size: size)
          ],
        ),
      ),
    );
  }

//***************************************************** */
  //methods
//***************************************************** */
  Column containerRowTextbuttonMethod(Size size) {
    return Column(
      children: [
        CategoryContainerWidget(
          size: size,
          heading: 'Popular books in your country',
          buttonName: 'Discover more',
        ),
        kheight20,
        CategoryContainerWidget(
          size: size,
          heading: 'Best books to read this week',
          buttonName: 'Best Sellers',
        ),
        kheight20,
        CategoryContainerWidget(
          size: size,
          heading: 'Find the most wished books',
          buttonName: 'My wishlists',
        ),
        kheight20,
        CategoryContainerWidget(
          size: size,
          heading: 'How releases',
          buttonName: 'Coming soon books',
        )
      ],
    );
  }

  // Column popularCategoryMethod(Size size) {
  //   return Column(
  //     children: [
  //       const Center(
  //         child: Text(
  //           'Popular Categories',
  //           style: TextStyle(
  //             color: Colors.grey,
  //             fontWeight: FontWeight.bold,
  //           ),
  //         ),
  //       ),
  //       kheight20,
  //       Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           ContainerRowTextbutton(),
  //           kheight,
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [
  //               TextButtonContainer(size: size, buttonTitle: 'Romance'),
  //               kwidth,
  //               TextButtonContainer(size: size, buttonTitle: 'Biography'),
  //             ],
  //           ),
  //           kheight,
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [
  //               TextButtonContainer(size: size, buttonTitle: "Children's Book"),
  //               kwidth,
  //               TextButtonContainer(size: size, buttonTitle: 'Medical'),
  //             ],
  //           ),
  //           kheight,
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [
  //               TextButtonContainer(
  //                   size: size, buttonTitle: 'Crime & Thriller'),
  //               kwidth,
  //               TextButtonContainer(size: size, buttonTitle: 'Computing'),
  //             ],
  //           ),
  //         ],
  //       ),
  //     ],
  //   );
  // }

  Container faqContainerMethod(Size size) {
    return Container(
      height: size.width * .50,
      width: size.width,
      color: Colors.grey[300],
      child: Column(
        children: [
          kheight20,
          const Text(
            'FAQ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          kheight20,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContainerWidgetTextButton1(
                size: size,
                buttonUrl:
                    'https://pbs.twimg.com/profile_images/1488951354022318086/IWCXeI6N_400x400.jpg',
                buttonText: 'Book Depository',
                buttonSubText: 'FAQ',
              ),
              kwidth,
              ContainerWidgetTextButton1(
                size: size,
                buttonUrl:
                    'https://1000logos.net/wp-content/uploads/2020/07/AbeBooks-Logo1.jpg',
                buttonText: 'AbeBooks',
                buttonSubText: 'FAQ',
              ),
            ],
          ),
          kheight,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContainerWidgetTextButton1(
                size: size,
                buttonUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9lqFa4g7DPrtWVT2rW3bBsgPkl-WciffUIA&usqp=CAU',
                buttonText: 'Blackwells',
                buttonSubText: 'FAQ',
              ),
              kwidth,
              ContainerWidgetTextButton1(
                size: size,
                buttonUrl:
                    'https://eeas.europa.eu/sites/default/files/2017/01/12/eu_logo.jpg',
                buttonText: 'VAT for',
                buttonSubText: 'EU countries',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Column buttonColumnMethod(Size size) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonColumnWidget(
              size: size,
              buttonUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUs6s0wEnDECX8__yp2i8pR-dyBNz1IXOD4g17t97VO23drhLdGT-zx9EXD6Ie-DaxDQw&usqp=CAU',
              buttonText: 'Free Shipping',
            ),
            kwidth,
            ButtonColumnWidget(
              size: size,
              buttonUrl:
                  'https://upload.wikimedia.org/wikipedia/en/4/48/Blackwell%27s_logo.jpg',
              buttonText: 'Free Shipping',
            ),
          ],
        ),
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonColumnWidget(
              size: size,
              buttonUrl:
                  'https://cdn2.downdetector.com/static/uploads/logo/abebooks.png',
              buttonText: 'Marketplace',
            ),
            kwidth,
            ButtonColumnWidget(
              size: size,
              buttonUrl:
                  'https://services.betterworldbooks.com/wp-content/uploads/sites/10/2021/07/bwb_logotype_dark.png',
              buttonText: 'New & Used',
            ),
          ],
        ),
      ],
    );
  }

  Column TitleCompareMethod() {
    return Column(
      children: [
        const Text(
          'Compare book prices',
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 10,
              width: 15,
              child: const Image(
                image: NetworkImage(
                  'https://cdn.britannica.com/97/1597-004-05816F4E/Flag-India.jpg',
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
              'Free Shipping',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ],
    );
  }

  Padding ImageRowMethod(Size size, ImgItems item) {
    return Padding(
      padding: const EdgeInsets.all(8.5),
      child: Container(
        alignment: Alignment.center,
        width: size.width * .40,
        height: size.height * .29,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      item.imageurl,
                    ),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.grey.withOpacity(0.8),
                      BlendMode.darken,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: size.width * .20,
                height: size.height * .29,
                alignment: Alignment.center,
                child: Text(
                  item.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
