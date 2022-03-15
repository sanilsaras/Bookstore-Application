import 'package:bookstoreapp/core/colors.dart';
import 'package:bookstoreapp/presentation/main_page/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class ScreenWishlists extends StatelessWidget {
  const ScreenWishlists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: "My Wishlists",
        ),
      ),
    );
  }
}
