import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CompanyDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.center
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
        width: 1000,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Cardano Smart Contract Security Made Easy",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  height: 0.9,
                  fontSize: titleSize,
                  color: Colors.white),
              textAlign: textAlignment,
            ),
          ],
        ),
      );
    });
  }
}
