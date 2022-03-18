import 'package:bookstoreapp/core/constants.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/container_row_textbutton.dart';
import 'package:flutter/material.dart';

class PopularCategoryWidget extends StatelessWidget {
  const PopularCategoryWidget({
    Key? key,
    required this.size,
    required this.bHeading,
  }) : super(key: key);

  final Size size;
  final String bHeading;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            bHeading,
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        kheight20,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ContainerRowTextbutton(
              size: size,
              buttonTitle1: 'Fiction',
              buttonTitle2: 'Religion',
            ),
            kheight,
            ContainerRowTextbutton(
              size: size,
              buttonTitle1: 'Romance',
              buttonTitle2: 'Biography',
            ),
            kheight,
            ContainerRowTextbutton(
              size: size,
              buttonTitle1: "Children's Books",
              buttonTitle2: 'Medical',
            ),
            kheight,
            ContainerRowTextbutton(
              size: size,
              buttonTitle1: 'Crime & Thriller',
              buttonTitle2: 'Computing',
            ),
          ],
        ),
      ],
    );
  }
}
