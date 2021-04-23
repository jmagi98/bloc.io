import 'package:bloc/views/home/home_content_desktop.dart';
import 'package:bloc/views/home/home_content_mobile.dart';
import 'package:bloc/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:bloc/widgets/navigation_bar/navigation_bar.dart';
import 'package:bloc/widgets/centered_view/centered_view.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'home_content_desktop.dart';
import 'home_content_mobile.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('background.jpeg'), fit: BoxFit.cover)),
          child: CenteredView(
            child: Column(
              children: [
                NavigationBar(),
                Expanded(
                    child: ScreenTypeLayout(
                  desktop: HomeContentDesktop(),
                  mobile: HomeContentMobile(),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
