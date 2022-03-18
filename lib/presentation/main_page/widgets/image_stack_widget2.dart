import 'package:bookstoreapp/core/constants.dart';
import 'package:bookstoreapp/domain/list_items.dart';
import 'package:flutter/material.dart';

class ImageStackWidget2 extends StatelessWidget {
  const ImageStackWidget2({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.width * .9,
      width: size.width,
      child: Column(
        children: [
          for (int i = 0; i < 3; i++)
            stackImageMethod(
              coItems2[i].coImageurl,
              coItems2[i].coTitle,
              coItems2[i].coSubTitle,
            ),
        ],
      ),
    );
  }

  Padding stackImageMethod(String url, String title, String subTitle) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Stack(
        children: [
          Container(
            height: size.width * .25,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: NetworkImage(
                  url,
                ),
                fit: BoxFit.cover,
                colorFilter: const ColorFilter.mode(
                  Colors.grey,
                  BlendMode.darken,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  subTitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
