import 'package:bookstoreapp/core/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.lightBlue,
      child: Row(
        children: [
          kwidth,
          Icon(Icons.menu, color: Colors.white),
          kwidth,
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Spacer(),
          Icon(
            Icons.mic,
            color: Colors.white,
          ),
          kwidth,
          Icon(
            Icons.share,
            color: Colors.white,
          ),
          kwidth,
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
          kwidth,
        ],
      ),
    );
  }
}
