import 'package:bookstoreapp/core/constants.dart';
import 'package:flutter/material.dart';

class ButtonColumnWidget extends StatelessWidget {
  const ButtonColumnWidget({
    Key? key,
    required this.size,
    required this.buttonUrl,
    required this.buttonText,
  }) : super(key: key);

  final Size size;
  final String buttonUrl;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: Colors.white),
      onPressed: () {},
      child: Column(
        children: [
          Container(
            height: size.width * .12,
            width: size.width * .35,
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
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          kheight,
        ],
      ),
    );
  }
}
