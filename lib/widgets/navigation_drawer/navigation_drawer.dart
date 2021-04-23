import 'package:bloc/widgets/navigation_drawer/drawer_item.dart';
import 'package:bloc/widgets/navigation_drawer/navigation_drawer_header.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white, boxShadow: [BoxShadow(color: Colors.black12)]),
      child: Column(
        children: [
          NavigationDrawerHeader(),
          DrawerItem('Nav1', Icons.videocam),
          DrawerItem('Nav2', Icons.help)
        ],
      ),
    );
  }
}
