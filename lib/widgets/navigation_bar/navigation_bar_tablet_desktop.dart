import 'package:flutter/material.dart';
import 'package:bloc/widgets/navigation_bar/navbar_item.dart';
import 'package:bloc/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem('Nav1'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Nav2')
            ],
          )
        ],
      ),
    );
  }
}
