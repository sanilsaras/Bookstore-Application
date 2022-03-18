import 'package:flutter/material.dart';

class ScrollDotWidgets1 extends StatelessWidget {
  const ScrollDotWidgets1({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
    );
  }
}
