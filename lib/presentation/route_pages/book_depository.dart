import 'package:flutter/material.dart';

class BookDepository extends StatelessWidget {
  const BookDepository({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Book Depository'),
        ),
      ),
    );
  }
}
