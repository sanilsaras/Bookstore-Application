// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ContainerWidgetTextButton1 extends StatelessWidget {
  const ContainerWidgetTextButton1({
    Key? key,
    required this.size,
    required this.buttonUrl,
    required this.buttonText,
    required this.buttonSubText,
  }) : super(key: key);

  final Size size;
  final String buttonUrl;
  final String buttonText;
  final String buttonSubText;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      width: size.width * .40,
      height: size.width * .13,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.width * .06,
                width: size.width * .10,
                child: Image(
                  fit: BoxFit.contain,
                  image: NetworkImage(
                    buttonUrl,
                  ),
                ),
              ),
              Text(
                buttonText,
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Text(
            buttonSubText,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
