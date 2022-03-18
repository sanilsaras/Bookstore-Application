import 'package:bookstoreapp/core/colors.dart';
import 'package:flutter/material.dart';

class MaterialButtonWidget extends StatelessWidget {
  const MaterialButtonWidget(
      {Key? key, required this.title, required this.size})
      : super(key: key);
  final String title;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: MaterialButton(
        color: colorwhite,
        onPressed: () {},
        child: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: colorDBlue,
            ),
          ),
        ),
      ),
    );
  }
}
