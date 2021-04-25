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
              Container(
                padding: EdgeInsets.all(5),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, -2),
                          blurRadius: 30,
                          color: Colors.black.withOpacity(.16))
                    ]),
              ),
              SizedBox(
                width: 15,
              ),
              NavBarItem('About Us'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Team')
            ],
          )
        ],
      ),
    );
  }
}
