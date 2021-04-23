import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CompanyDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.left
              : TextAlign.center;
      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 50
              : 80;
      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 16
              : 21;
      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "TEST",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  height: 0.9,
                  fontSize: titleSize,
                  color: Colors.blue[900]),
              textAlign: textAlignment,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse consectetur odio at mattis vehicula. Praesent pellentesque enim non molestie tristique. Fusce lobortis, nisl vitae tincidunt rhoncus, tellus dolor aliquam velit, et sollicitudin diam ligula non dolor. In pharetra augue et enim sodales vulputate. Sed placerat feugiat leo, at luctus diam. Duis elementum, libero ultricies tempus porta, massa sem porttitor nisl, sed placerat dui dui sit amet leo. Phasellus viverra commodo auctor. Nulla vitae elementum sapien, sit amet finibus elit.",
              style: TextStyle(
                fontSize: descriptionSize,
                height: 1.7,
                color: Colors.white,
              ),
              textAlign: textAlignment,
            ),
          ],
        ),
      );
    });
  }
}
