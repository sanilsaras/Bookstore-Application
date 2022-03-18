import 'package:bookstoreapp/core/colors.dart';
import 'package:bookstoreapp/core/constants.dart';
import 'package:flutter/material.dart';

class ContainerRowTextbutton extends StatelessWidget {
  const ContainerRowTextbutton({
    Key? key,
    required this.size,
    required this.buttonTitle1,
    required this.buttonTitle2,
  }) : super(key: key);
  final Size size;
  final String buttonTitle1;
  final String buttonTitle2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
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
              buttonTitle1,
              style: const TextStyle(
                color: colorBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        kwidth,
        Container(
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
              buttonTitle2,
              style: const TextStyle(
                color: colorBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
