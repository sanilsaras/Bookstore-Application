import 'package:bookstoreapp/core/constants.dart';
import 'package:bookstoreapp/domain/list_items.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/scroll_dot_widgets.dart';
import 'package:flutter/material.dart';

class CategoryContainerWidget extends StatelessWidget {
  const CategoryContainerWidget({
    Key? key,
    required this.size,
    required this.heading,
    required this.buttonName,
  }) : super(key: key);

  final Size size;
  final String heading;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kheight20,
        Text(
          heading,
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight20,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: [
              for (int i = 0; i < 6; i++)
                Padding(
                  padding: const EdgeInsets.only(
                    left: 6,
                    right: 6,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: size.width * .40,
                    height: size.height * .29,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: NetworkImage(
                          citems[i].cimageurl,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        kheight20,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < 10; i++) ScrollDotWidgets1(size: size),
          ],
        ),
        kheight20,
        SizedBox(
          width: size.width * 0.8,
          height: size.width * 0.10,
          child: MaterialButton(
            color: Colors.yellow,
            onPressed: () {},
            child: Text(
              buttonName,
            ),
          ),
        ),
      ],
    );
  }
}
