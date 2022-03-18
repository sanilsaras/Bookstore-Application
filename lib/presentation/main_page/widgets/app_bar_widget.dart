import 'package:bookstoreapp/core/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

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
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white),
          ),
          //const Icon(Icons.menu, color: Colors.white),
          kwidth,
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.mic,
            color: Colors.white,
          ),
          kwidth,
          IconButton(
            onPressed: () {
              Share.share(
                  "https://play.google.com/store/apps/details?id=com.instructivetech.testapp");
            },
            icon: const Icon(
              Icons.share,
              color: Colors.white,
            ),
          ),
          kwidth,
          // const Icon(
          //   Icons.share,
          //   color: Colors.white,
          // ),
          // Drawer(
          //   child: Material(
          //     child: ListView(
          //       children: const [
          //         SizedBox(
          //           height: 50,
          //         ),
          //         ListTile(
          //           leading: Icon(Icons.home),
          //           title: Text('Home'),
          //         )
          //       ],
          //     ),
          //   ),
          // ),

          const PopupMenuWidget(),
          kwidth,
        ],
      ),
    );
  }
}

class PopupMenuWidget extends StatelessWidget {
  const PopupMenuWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
        // onSelected: (value) => onselected(context, value),
        itemBuilder: (context) => const [
              PopupMenuItem(
                value: 0,
                child: Text('Scan ISBN'),
              ),
              PopupMenuItem(
                value: 1,
                child: Text('Recently viewed'),
              ),
              PopupMenuItem(
                value: 2,
                child: Text('Advanced search'),
              ),
              PopupMenuItem(
                value: 3,
                child: Text('Invite friends'),
              ),
              PopupMenuItem(
                value: 4,
                child: Text('About app'),
              ),
              PopupMenuItem(
                value: 5,
                child: Text('App language'),
              ),
            ]);
  }

  void onselected(BuildContext contex, int item) {
    switch (item) {
      case 0:
        print('Hai');
    }
  }
}
