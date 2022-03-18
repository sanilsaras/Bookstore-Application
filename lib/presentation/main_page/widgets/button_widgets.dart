import 'package:bookstoreapp/core/colors.dart';
import 'package:bookstoreapp/core/constants.dart';
import 'package:bookstoreapp/presentation/route_pages/book_depository.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buttonMethod(
            context,
            'https://pbs.twimg.com/profile_images/1488951354022318086/IWCXeI6N_400x400.jpg',
            'Book Depository'),
        kwidth,
        buttonMethod(
            context,
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9lqFa4g7DPrtWVT2rW3bBsgPkl-WciffUIA&usqp=CAU',
            "Blackwell's"),
      ],
    );
  }

  ElevatedButton buttonMethod(BuildContext context, String url, String title) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: colorwhite),
      onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const BookDepository())),
      child: Row(
        children: [
          Container(
            height: 20,
            width: 20,
            child: Image(
              fit: BoxFit.contain,
              image: NetworkImage(
                url,
              ),
            ),
          ),
          const SizedBox(width: 3),
          Text(
            title,
            style: const TextStyle(color: colorBlue),
          ),
        ],
      ),
    );
  }
}
