import 'package:bookstoreapp/core/colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colorwhite),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.book, color: ColorBlue),
              Text(
                'Book Depository',
                style: TextStyle(color: ColorBlue),
              ),
            ],
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colorwhite),
          onPressed: () {},
          child: Row(
            children: [
              Icon(Icons.book, color: ColorBlue),
              Text(
                "Blackwell's",
                style: TextStyle(color: ColorBlue),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
