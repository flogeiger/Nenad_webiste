import 'package:flutter/material.dart';
import 'package:nenad_web/widgets/nav_drawer/drawer_item.dart';
import 'package:nenad_web/widgets/nav_drawer/navigation_drawer_header.dart';

class CostumeNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          const DrawerItem('Episodes', Icons.videocam),
          const DrawerItem('About', Icons.help),
        ],
      ),
    );
  }
}
