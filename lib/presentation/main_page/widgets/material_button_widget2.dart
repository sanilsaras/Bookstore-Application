import 'package:flutter/material.dart';

class MaterialButtonWidget2 extends StatelessWidget {
  const MaterialButtonWidget2({
    Key? key,
    required this.bTitle,
  }) : super(key: key);
  final String bTitle;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.yellow,
      onPressed: () {},
      child: Text(bTitle),
    );
  }
}
