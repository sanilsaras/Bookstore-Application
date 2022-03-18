import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    Key? key,
    required this.size,
    required this.imgurl,
  }) : super(key: key);

  final Size size;
  final String imgurl;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: size.width * .40,
      height: size.height * .29,
      color: Colors.white,
      child: Image(
        image: NetworkImage(
          imgurl,
        ),
        fit: BoxFit.cover,
      ),
    );
  }
}
