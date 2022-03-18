import 'package:bookstoreapp/core/colors.dart';
import 'package:flutter/material.dart';

class TextButtonContainer extends StatelessWidget {
  const TextButtonContainer({
    Key? key,
    required this.size,
    required this.buttonTitle,
  }) : super(key: key);

  final Size size;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: size.width * .40,
      height: size.width * .13,
      decoration: BoxDecoration(
        color: colorwhite,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          buttonTitle,
          style: const TextStyle(
            color: colorBlue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
