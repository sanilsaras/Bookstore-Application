import 'package:bookstoreapp/core/colors.dart';
import 'package:bookstoreapp/core/constants.dart';
import 'package:bookstoreapp/domain/list_items.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/button_column_widget.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/popular_category_widget.dart';
import 'package:flutter/material.dart';

class BottomTagWidget extends StatelessWidget {
  const BottomTagWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PopularCategoryWidget(size: size, bHeading: 'Popular categories'),
        kheight,
        MaterialButton(
          color: Colors.yellow,
          onPressed: () {},
          child: const Text('Book categories'),
        ),
        kheight20,
        const Center(
          child: Text(
            'Free shipping',
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonColumnWidget(
              size: size,
              buttonUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUs6s0wEnDECX8__yp2i8pR-dyBNz1IXOD4g17t97VO23drhLdGT-zx9EXD6Ie-DaxDQw&usqp=CAU',
              buttonText: '20 million books',
            ),
            kwidth,
            ButtonColumnWidget(
              size: size,
              buttonUrl:
                  'https://upload.wikimedia.org/wikipedia/en/4/48/Blackwell%27s_logo.jpg',
              buttonText: '10 million books',
            ),
          ],
        ),
        kheight,
        MaterialButton(
          color: Colors.yellow,
          onPressed: () {},
          child: const Text('List of bookstore'),
        ),
        kheight20,
        const Center(
          child: Text(
            'Book Depository: payment methods',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        kheight20,
        Row(
          children: [
            for (int i = 0; i < 5; i++) paymentModeMethod(payLink[i]),
          ],
        ),
        kheight,
        Container(
          height: size.width * .35,
          width: size.width * .9,
          color: colorwhite,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                kheight,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 5; i++) const Icon(Icons.star),
                  ],
                ),
                const Text(
                  'If you enjoyed your app experience, tell us (and others) about it!',
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Leave a review',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: colorDBlue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        kheight,
        Container(
          height: size.width * .38,
          width: size.width,
          color: colorBlue,
          child: Column(
            children: [
              kheight20,
              const Text(
                'Book search and price comparison',
                style: TextStyle(fontSize: 15, color: colorwhite),
              ),
              const Text(
                'Bookstores.app',
                style: TextStyle(fontSize: 15, color: colorwhite),
              ),
              const Text(
                '35 000+ active app users',
                style: TextStyle(fontSize: 15, color: colorwhite),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Questions? E-mail:',
                    style: TextStyle(fontSize: 15, color: colorwhite),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'hello@bookstores.app',
                      style: TextStyle(fontSize: 15, color: colorwhite),
                    ),
                  ),
                ],
              ),
              kheight20,
            ],
          ),
        ),
      ],
    );
  }

  SizedBox paymentModeMethod(String url) {
    return SizedBox(
      width: size.width * .18,
      height: size.width * .10,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.white),
        onPressed: () {},
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
          ),
          child: Image(
            fit: BoxFit.contain,
            image: NetworkImage(
              url,
            ),
          ),
        ),
      ),
    );
  }
}
